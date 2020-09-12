$ErrorActionPreference = 'Stop'
$url        = 'http://url.wiz.cn/u/windows'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName   = 'wiznote-windows*'
  checksum      = 'a1c4e1a35392985cf438c8ce5b7a8f7dc4f5f10c7912977a939b58e0dfaf741e'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs