#Configure Auditing
Invoke-WebRequest -Uri "https://www.malwarearchaeology.com/s/Set_Adv_Auditing_Folders_Keys_vDec_2018-fa6n.zip" -OutFile "c:\users\vagrant\Desktop\audit.zip"
Expand-Archive -F "c:\users\vagrant\Desktop\audit.zip" -DestinationPath "c:\users\vagrant\desktop\audit"
c:\users\vagrant\desktop\audit\1_Set_Audit_Pol_PS_v2_3_4_5.cmd