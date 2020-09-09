$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$ahkFile = Join-Path $toolsDir 'chocolateyuninstall.ahk'
Write-Host "AutoHotKey Script: " $ahkFile

try {
  $ahkProc = Start-Process -FilePath 'AutoHotKey' `
    -ArgumentList "`"$ahkFile`"" `
    -PassThru
  Write-Debug "$ahkRun start time:`t$($ahkProc.StartTime.ToShortTimeString())"
  Write-Debug "$ahkRun process ID:`t$($ahkProc.Id)"
}
catch {
}
