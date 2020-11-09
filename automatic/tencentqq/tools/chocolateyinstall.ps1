$ErrorActionPreference = 'Stop';
$url        = 'https://down.qq.com/qqweb/PCQQ/PCQQ_EXE/PCQQ2020.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName  = 'PCQQ*'
  checksum       = '2822fb13f61fb1eabb0c697e6c28bd910ec5a994fa43f67e84252edf7a5a4938'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs



















