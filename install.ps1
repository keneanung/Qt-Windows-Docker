$global:ErrorActionPreference = "Stop"
cd C:\src
$url = "http://download.qt.io/official_releases/online_installers/qt-unified-windows-x86-online.exe"
$file = "qt-installer.exe"
(New-Object System.Net.WebClient).DownloadFile($url, $file)
.\qt-installer --script=qt-silent-install.qs
Remove-Item qt-installer.exe
Remove-Item qt-silent-install.qs
Remove-Item install.ps1