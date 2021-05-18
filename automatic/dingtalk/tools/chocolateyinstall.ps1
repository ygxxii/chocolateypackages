$ErrorActionPreference = 'Stop';
$url = 'https://dtapp-pub.dingtalk.com/dingtalk-desktop/win_installer/Release/DingTalk_v6.0.15.5171263.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'DingTalk_*'
  checksum       = '654F897D57064D588D8FE13060D1419F1B100E731D4CCD60A7774BEB8C1B8A73'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0, 1223)
}

Install-ChocolateyPackage @packageArgs
