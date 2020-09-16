$ErrorActionPreference = 'Stop'

## Caution: This is not the offical download link
$url        = 'https://dl.softmgr.qq.com/original/Input/sogou_pinyin_9.8.0.3746_6989.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName   = 'sogou_pinyin_*'
  checksum      = '0c02a57fb7850e59e17c62f7cf14d1bc089d4919f1a7b862393f3fa1cffaaeb6'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)

}

Install-ChocolateyPackage @packageArgs