# escape=`

FROM mcr.microsoft.com/windows/servercore:ltsc2016

COPY qt-silent-install.qs C:\src\
COPY install.ps1 C:\src\

RUN powershell -File C:\src\install.ps1
