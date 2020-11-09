$ErrorActionPreference = 'Stop'

$url = 'https://updatecdn.meeting.qq.com/2b6b631f401075bc21c9169cc9baea83/TencentMeeting_0300000000_2.1.1.432.publish.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'TencentMeeting_*'
  checksum       = '74a0fbe2a9e6779a7cb4e03502f89a9702cd6335c3d3958619ab8dc7359494ae'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs