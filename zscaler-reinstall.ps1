$dir = "c:\temp"
if(Test-Path $dir) {
    cd $dir
}
else {
    mkdir $dir
    cd $dir
}

Set-ExecutionPolicy Bypass -Scope Process -Force
#[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072

$filename = "zscaler-test.msi"
$file = (New-Object System.Net.WebClient).DownloadString("https://d32a6ru7mhaq0c.cloudfront.net/Zscaler-windows-3.6.1.17-installer.msi")
$file | Set-Content $filename -Force

msiexec.exe /x "{6823885A-645C-48A4-9410-DC104080F0E6}" /qn
msiexec.exe /i $filename /qb

#Invoke-Expression ((New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/satsuk81/test/main/zscaler-reinstall.ps1"))
