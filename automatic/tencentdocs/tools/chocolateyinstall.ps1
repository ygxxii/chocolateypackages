$ErrorActionPreference = 'Stop';

$url        = 'https://down.qq.com/qqweb/PC_DOCS/TencentDocsSetup.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'TencentDocsSetup*'
  checksum       = '13c0670aa8fd529d0ebecdb8d4fcebbb1d342ea1bcc3cfce942790443dfe95bd'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs