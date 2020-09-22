$ErrorActionPreference = 'Stop'

$url        = 'https://work.weixin.qq.com/wework_admin/commdownload?platform=win&from=wwindex' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'WXWork_*'
  checksum      = '080b616e109adaf766b304e022bdc61677d3c23104ae6e619fb11f720beb6048'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs