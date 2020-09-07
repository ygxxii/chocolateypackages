$ErrorActionPreference = 'Stop';
$url        = 'https://down.qq.com/qqweb/PCQQ/PCQQ_EXE/PCQQ2020.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'PCQQ*'
  checksum       = '160974FC256DE2B426D36385B2EF9E6149BABB702E38AA6A9E93FC9B54FADB34'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs



















