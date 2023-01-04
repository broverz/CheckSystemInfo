@echo off
@echo Checking your system info, Please wait... && title Checking your system,
systeminfo | findstr /c:"Host Name"
systeminfo | findstr /c:"Domain"
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Manufacturer"
systeminfo | findstr /c:"System Model"
systeminfo | findstr /c:"System type"
systeminfo | findstr /c:"Total Physical Memory"

@echo.
@echo CPU: && wmic cpu get name

@echo.
@echo Hard Drive Space: && wmic diskdrive get size

@echo. && ipconfig | findstr IPv4

@echo Task Completed! && pause > null