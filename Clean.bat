@echo off
:: Start minimized
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /c "%~dpnx0"
exit

:minimized
:: Delete all files in the temp folder
del /q/f/s %temp%\*

:: Remove the Recycle Bin files
rd /s /q %systemdrive%\$Recycle.bin\*

:: Clean up Windows Update cache
net stop wuauserv
del /f /s /q %windir%\SoftwareDistribution\Download\*
net start wuauserv

:: Delete all files in the Prefetch folder
del /q/f/s %windir%\Prefetch\*

:: Clear the DNS cache
ipconfig /flushdns

:: Run Disk Cleanup with VERYLOWDISK flag on C: and D: drives
cleanmgr /d C: /VERYLOWDISK
cleanmgr /d D: /VERYLOWDISK
cleanmgr /d E: /VERYLOWDISK
cleanmgr /d F: /VERYLOWDISK

:: Optional: Clean up temporary Internet files and cookies (Internet Explorer)
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2

:: Clear Windows Event Logs
for /F "tokens=1,2*" %%V in ('wevtutil.exe el') DO wevtutil.exe cl "%%V"

:: Clear the Windows Update Delivery Optimization files
del /s /f /q %ProgramData%\Microsoft\Network\Downloader\*

:: Delete all files in the Downloads folder 
del /q/f/s %userprofile%\Downloads\*

:: End of script
exit
