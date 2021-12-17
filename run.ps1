Copy-Item "C:\Program Files (x86)\Zscaler\ZSAFilterDriver\10.0\x64\zapprd.sys" "C:\Windows\system32\drivers" -Force
Start-Sleep -Seconds 30
sc start zapprd
#Restart-Service -DisplayName z* -Force