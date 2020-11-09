$ErrorActionPreference = 'Stop'

$url        = 'https://www.yinxiang.com/download/get.php?file=Win'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Evernote_*'
  checksum      = '74373b515ce59ed087505760856ba17b42ece9365b9d05126b2bad26ee393cc9'
  checksumType  = 'sha256'
  silentArgs    = "/quiet"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs