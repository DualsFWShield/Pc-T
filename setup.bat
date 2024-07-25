mkdir C:\Users\%username%\Pc-et-T\

Xcopy "%CD%\Application-Files\" "C:\Users\%username%\Pc-et-T\" /C

@timeout /t 100

echo Set winScriptObj = WScript.CreateObject("WScript.Shell") >>lnk.vbs
echo linkFile = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Pc&T.lnk" >>lnk.vbs
echo Set link = winScriptObj.CreateShortcut(linkFile) >>lnk.vbs
echo link.TargetPath = "C:\Users\%username%\Pc-et-T\PasswordCreatorAndTestor.exe" >>lnk.vbs
echo Link.Save >>lnk.vbs
start /WAIT lnk.vbs
del lnk.vbs

cmd /C start https://sites.google.com/view/pc-et-t/merci