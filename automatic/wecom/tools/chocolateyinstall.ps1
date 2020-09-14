$ErrorActionPreference = 'Stop'

$url        = 'https://work.weixin.qq.com/wework_admin/commdownload?platform=win&from=wwindex' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'WXWork_*'
  checksum      = '4aaff8d47c744c37329794ac21ee27439b8c0a0b7686372a313caec47fa41c4f'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs