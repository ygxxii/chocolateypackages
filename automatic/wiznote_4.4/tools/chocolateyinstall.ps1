$ErrorActionPreference = 'Stop'
$url        = 'http://release.wiz.cn/wiznote-windows-x86-2016-08-22.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName   = 'wiznote-windows*'
  checksum      = 'f5500f0272dae473f6b9abf90d48e0a882b477ea9f32e1d69c8621d166d98167'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs