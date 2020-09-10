$ErrorActionPreference = 'Stop';
$url = 'https://www.dingtalk.com/win/d/'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'DingTalk_*'
  checksum       = '9d3122f4028f74f9c3ad85ef16a50baa65f131b03db8023cf6626e1fdffea92f'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0, 1223)
}

Install-ChocolateyPackage @packageArgs