$ErrorActionPreference = 'Stop'
$url        = 'http://get.wiz.cn/wiznote-windows-x86-2019-05-15.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  softwareName   = 'wiznote-windows*'
  checksum      = 'ad0297ea90cfacfe62612df306963363eff3b6a229d791dbf1ccfd8bc42216ab'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs