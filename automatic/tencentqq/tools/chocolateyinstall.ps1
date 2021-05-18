$ErrorActionPreference = 'Stop';
$url        = 'https://down.qq.com/qqweb/PCQQ/PCQQ_EXE/PCQQ2021.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName  = 'PCQQ*'
  checksum       = 'ED80499F43B180BE3DEFC4C1977F224D0C08C23907947502553EBAD16A6D9A10'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs



















