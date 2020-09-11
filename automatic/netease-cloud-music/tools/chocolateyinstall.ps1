$ErrorActionPreference = 'Stop'
$url        = 'https://d1.music.126.net/dmusic/cloudmusicsetup2.7.3.198319.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'cloudmusicsetup*'
  checksum       = '8f352e1afb7fec2f988193e31aef0c93ff44750799d79baa362fb01fa58c95ee'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs