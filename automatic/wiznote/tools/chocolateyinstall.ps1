$ErrorActionPreference = 'Stop'

$osInfo = Get-WmiObject Win32_OperatingSystem | Select-Object Version, ProductType, Caption, OperatingSystemSKU, BuildNumber

Write-host "Detected:  $($osInfo.Caption)" -ForegroundColor Cyan

$osInfo.Version = [version]$osInfo.Version
if ($osInfo.Version -lt [version]'6.0') {
  Throw 'WizNote 4.11+ requires Windows Vista or later.'
}

$url        = 'http://url.wiz.cn/u/windows'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName   = 'wiznote-windows*'
  checksum      = 'a1c4e1a35392985cf438c8ce5b7a8f7dc4f5f10c7912977a939b58e0dfaf741e'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs