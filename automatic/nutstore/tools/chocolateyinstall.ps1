$ErrorActionPreference = 'Stop';

$url = 'https://www.jianguoyun.com/static/exe/installer/NutstoreWindowsWPFInstaller.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'NutstoreWindowsWPFInstaller*'
  checksum       = '65e54f9b216334d364c06516ea5f3b778b251b677823147b38ed4f77ea7b27cf'
  checksumType   = 'sha256'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs