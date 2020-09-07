winTitle = "ahk_class #32770 ahk_exe MsiExec.exe"
WinWait winTitle, , 300

if (hWnd := WinExist(winTitle))
{
    WinClose, ahk_id %hWnd%
    return
}