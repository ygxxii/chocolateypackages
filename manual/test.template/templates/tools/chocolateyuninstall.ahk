; This is an example file

; The encoding of this file is "UTF-8 with BOM". Please do not change !

winTitleA = 提示 ahk_class #32770 ahk_exe TencentDocsUninst.exe
winTitleB = 腾讯文档卸载 ahk_class #32770 ahk_exe TencentDocsUninst.exe
WinWait %winTitleA%, , 60
if (hWnd := WinExist(winTitleA))
{
    ControlClick Button1 ,ahk_id %hWnd%
    TrayTip, Chocolatey Uninstall, Tencent Docs Uninstalling., 1
}
WinWait %winTitleB%, , 60
if (hWnd := WinExist(winTitleB))
{
    ControlClick Button1 ,ahk_id %hWnd%
    TrayTip, Chocolatey Uninstall, Tencent Docs Uninstalling., 1
}