$ErrorActionPreference = 'Stop';

$url        = 'https://down.qq.com/qqweb/PC_DOCS/TencentDocsSetup.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'TencentDocsSetup*'
  checksum       = '4d735b30f76d84d455238b270d7b0a5aaa8d8d3e06c083f35268d5d4b9b56ee8'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs