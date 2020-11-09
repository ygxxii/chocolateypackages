$ErrorActionPreference = 'Stop'

$url        = 'https://work.weixin.qq.com/wework_admin/commdownload?platform=win&from=wwindex' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'WXWork_*'
  checksum      = 'b1a9d27dcaee7a81352dbdb6d91d9febe6d31c777e917bfb4707e8cbed9a0443'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs