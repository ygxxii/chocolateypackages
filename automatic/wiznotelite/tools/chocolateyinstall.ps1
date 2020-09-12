$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://url.wiz.cn/u/LiteWin32'
$url64      = 'https://url.wiz.cn/u/LiteWin64'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName   = 'WizNoteLite-*'
  checksum      = 'a1cdf66cd2bfd9820cbd220d27ed2a96f2a1b77db06abe0be98bda91f8b69582'
  checksumType  = 'sha256'
  checksum64    = '424a2c46edf8f581e06a035164296dc4028fbfbf15972c2e197d40df76813665'
  checksumType64= 'sha256'

  silentArgs    = "/allusers /S"
  # silentArgs:
  #
  #   * "/S":                     Install to Current User Only ($Env:LocalAppData\Programs\)
  #   * "/currentuser /S":        Install to Current User Only ($Env:LocalAppData\Programs\)
  #   * "/allusers /S":           Install to All Users ($Env:Programfiles)
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs