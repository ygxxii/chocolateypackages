$ErrorActionPreference = 'Stop';
$url = 'https://www.dingtalk.com/win/d/'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'DingTalk_*'
  checksum       = 'e1ce1b56fb5064b8586b076428fa4dabc16f6ac229c032eea82513ca85af30a4'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0, 1223)
}

Install-ChocolateyPackage @packageArgs