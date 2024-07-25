echo Set winScriptObj = WScript.CreateObject("WScript.Shell") >>lnk.vbs
echo linkFile = "C:\Users\%username%\Desktop\Pc&T.lnk" >>lnk.vbs
echo Set link = winScriptObj.CreateShortcut(linkFile) >>lnk.vbs
echo link.TargetPath = "C:\Users\%username%\Pc-et-T\PasswordCreatorAndTestor.exe" >>lnk.vbs
echo Link.Save >>lnk.vbs
start /WAIT lnk.vbs
del lnk.vbs