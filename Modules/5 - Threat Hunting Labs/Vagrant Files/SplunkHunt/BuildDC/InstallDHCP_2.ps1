$recordtormove =get-DnsServerResourceRecord -ZoneName "othf.local" -RRType A -Name "dc1" | where {$_.RecordData.ipv4address.IPAddressToString -ne "10.10.1.1"}
$removeip = $recordtormove.RecordData.ipv4address.IPAddressToString
Remove-DnsServerResourceRecord -ZoneName "othf.local" -RRType "A" -Name "dc1" -RecordData "$removeip"


Install-WindowsFeature DHCP -IncludeManagementTools
netsh dhcp add securitygroups
Restart-Service dhcpserver
Add-DhcpServerInDC -DnsName DC1.othf.local -IPAddress 10.10.1.1
Get-DhcpServerInDC
Add-DhcpServerv4Scope -name "OTHF" -StartRange 10.10.1.1 -EndRange 10.10.1.254 -SubnetMask 255.255.255.0 -State Active
Add-DhcpServerv4ExclusionRange -ScopeID 10.10.1.0 -StartRange 10.10.1.1 -EndRange 10.10.1.5
Set-DhcpServerv4OptionValue -DnsDomain dc1.othf.local -DnsServer 10.10.1.1