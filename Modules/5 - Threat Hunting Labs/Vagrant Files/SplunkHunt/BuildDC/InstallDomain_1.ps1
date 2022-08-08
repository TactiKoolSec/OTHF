Set-ExecutionPolicy Bypass -Scope LocalMachine -Force
#Domain
## Domain Info
$ADPW = "!P@ssword123456"
$ADDomainName = "OTHF.local"
##
Remove-NetIPAddress -InterfaceAlias "Ethernet 2" -Confirm:$false
Remove-NetRoute -InterfaceAlias "Ethernet 2" -Confirm:$false -ErrorAction SilentlyContinue
New-NetIPAddress -InterfaceAlias "Ethernet 2" -AddressFamily IPv4 10.10.1.1 -PrefixLength 24 -Type Unicast -DefaultGateway 10.10.1.1
Disable-NetAdapterBinding -Name 'Ethernet 2' -ComponentID 'ms_tcpip6'
Set-DnsClientServerAddress -InterfaceAlias "Ethernet 2" -ServerAddresses 10.10.1.1

Import-Module ServerManager
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools

secedit /export /cfg C:\secpol.cfg
(Get-Content C:\secpol.cfg).replace("PasswordComplexity = 1", "PasswordComplexity = 0") | Out-File C:\secpol.cfg
(Get-Content C:\secpol.cfg).replace("PasswordHistorySize = 24", "PasswordHistorySize = 0") | Out-File C:\secpol.cfg
secedit /configure /db C:\Windows\security\local.sdb /cfg C:\secpol.cfg /areas SECURITYPOLICY
rm -force C:\secpol.cfg -confirm:$false

$computerName   = $env:COMPUTERNAME
$AdminAccount      = [ADSI] "WinNT://$computerName/Administrator"
$AdminAccount.PSBase.Invoke("SetPassword",$ADPW)
$SafePW = $ADPW | ConvertTo-SecureString -AsPlainText -Force

Import-Module ADDSDeployment
Install-ADDSForest `
            -SafeModeAdministratorPassword $SafePW `
            -CreateDnsDelegation:$false `
            -DatabasePath "C:\Windows\NTDS" `
            -DomainMode "Default" `
            -ForestMode "Default" `
            -DomainName $ADDomainName `
            -InstallDns:$true `
            -LogPath "C:\Windows\NTDS" `
            -NoRebootOnCompletion:$true `
            -SysvolPath "C:\Windows\SYSVOL" `
            -Force:$true
