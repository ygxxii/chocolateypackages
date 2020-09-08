winTitle = ahk_class #32770 ahk_exe MsiExec.exe
WinWait %winTitle%, , 60

if (hWnd := WinExist(winTitle))
{
    WinClose, ahk_id %hWnd%
    TrayTip, Chocolatey Uninstall, Tencent QQ Uninstalled., 1
}
