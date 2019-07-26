$global:ErrorActionPreference = "Stop"
cd C:\src
$url = "http://download.qt.io/official_releases/online_installers/qt-unified-windows-x86-online.exe"
$file = "C:\src\qt-installer.exe"
(New-Object System.Net.WebClient).DownloadFile($url, $file)
Start-Process -FilePath $file -Wait -PassThru -NoNewWindow -Argument-List @("--script=C:\src\qt-silent-install.qs")
Remove-Item qt-installer.exe
Remove-Item qt-silent-install.qs
Remove-Item install.ps1