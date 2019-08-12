# escape=`

FROM mcr.microsoft.com/windows/servercore:ltsc2016

COPY qt-silent-install.qs C:\src\
COPY install.ps1 C:\src\

RUN setx QT_BASE_DIR C:\Qt\5.12.3\mingw73_32
RUN setx MINGW_BASE_DIR C:\Qt\Tools\mingw730_32
RUN powershell -File C:\src\install.ps1
