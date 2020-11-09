; The encoding of this file is "UTF-8 with BOM". Please do not change !

winTitle = 腾讯QQ卸载 ahk_class #32770 ahk_exe MsiExec.exe
WinWait %winTitle%, , 60

if (hWnd := WinExist(winTitle))
{
    WinClose, ahk_id %hWnd%
    TrayTip, Chocolatey Uninstall, Tencent QQ Uninstalling., 1
}
