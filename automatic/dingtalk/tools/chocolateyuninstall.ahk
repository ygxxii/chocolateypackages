; The encoding of this file is "UTF-8 with BOM". Please do not change !

winTitle = ahk_class #32770 ahk_exe Au_.exe
WinWait %winTitle%, , 60

if (hWnd := WinExist(winTitle))
{
    WinClose, ahk_id %hWnd%
    TrayTip, Chocolatey Uninstall, DingTalk Uninstalling., 1
}
