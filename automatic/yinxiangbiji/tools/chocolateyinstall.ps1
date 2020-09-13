$ErrorActionPreference = 'Stop'

$url        = 'https://www.yinxiang.com/download/get.php?file=Win'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Evernote_*'
  checksum      = 'ae325f3c0ec66d4498c8a0a640050424064f66ffa02b3944bf690ff09ea7d17a'
  checksumType  = 'sha256'
  silentArgs    = "/quiet"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs