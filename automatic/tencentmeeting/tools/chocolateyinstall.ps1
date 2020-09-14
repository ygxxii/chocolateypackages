$ErrorActionPreference = 'Stop'

$url = 'https://updatecdn.meeting.qq.com/a6719ed4bfe172b80e4af07698e3a0a1/TencentMeeting_0300000000_1.9.0.448.publish.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'TencentMeeting_*'
  checksum       = 'b62a54854c9a7b322dde3e2d98bbb50ea870b769f7015e31f2a8c5fc5f0cf64e'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs