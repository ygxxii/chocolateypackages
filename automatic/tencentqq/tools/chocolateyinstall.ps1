$ErrorActionPreference = 'Stop';
$url        = 'https://down.qq.com/qqweb/PCQQ/PCQQ_EXE/PCQQ2020.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName  = 'PCQQ*'
  checksum       = 'fc2ea5e068489f7d0ccb758946a8a5d1724c340db3520b1357632800c4b38ada'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs



















