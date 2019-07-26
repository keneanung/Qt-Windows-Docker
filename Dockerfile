# escape=`

FROM microsoft/windowsservercore

COPY qt-silent-install.qs C:\src\
COPY install.ps1 C:\src\

RUN powershell -File C:\src\install.ps1
