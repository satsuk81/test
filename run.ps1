Copy-Item "C:\Program Files (x86)\Zscaler\ZSAFilterDriver\10.0\x64\zapprd.sys" "C:\Windows\system32\drivers" -Force
Restart-Service -DisplayName "Zscaler LightWeight Filter" -Force