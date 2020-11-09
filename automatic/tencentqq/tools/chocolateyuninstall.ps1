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

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = '腾讯QQ'
  fileType       = 'MSI'
  silentArgs     = "/quiet /passive /qn /norestart"
  validExitCodes = @(0, 3010, 1605, 1614, 1641)
}

$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $packageArgs['softwareName']

if ($key.Count -eq 1) {
  $key | % {
    $packageArgs['file'] = "$($_.UninstallString)"

    if ($packageArgs['fileType'] -eq 'MSI') {
      $packageArgs['silentArgs'] = "$($_.PSChildName) $($packageArgs['silentArgs'])"

      $packageArgs['file'] = ''
    }
    else {
    }

    Uninstall-ChocolateyPackage @packageArgs
  }
}
elseif ($key.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
}
elseif ($key.Count -gt 1) {
  Write-Warning "$($key.Count) matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Host "Please alert package maintainer the following keys were matched:"
  $key | % { Write-Host "- $($_.DisplayName)" }
}