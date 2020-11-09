$ErrorActionPreference = 'Stop';

$url = 'https://www.jianguoyun.com/static/exe/installer/NutstoreWindowsWPFInstaller.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'NutstoreWindowsWPFInstaller*'
  checksum       = '476f0000c1461da7e70a0c726a2e93162c2abebfc3f771ca2abd1ea35669c15c'
  checksumType   = 'sha256'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs