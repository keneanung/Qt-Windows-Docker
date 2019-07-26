FROM microsoft/windowsservercore

COPY qt-silent-install.qs C:\src

RUN powershell -Command "cd C:\src; & (New-Object System.Net.WebClient).DownloadFile(http://download.qt.io/official_releases/online_installers/qt-unified-windows-x86-online.exe qt-installer.exe); & .\qt-installer --script=qt-silent-install.qs; & Remove-Item qt-installer.exe; & Remove-Item qt-silent-install.qs"
