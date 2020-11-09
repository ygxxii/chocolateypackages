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
  checksum      = '74f4985bfe227a5096862e587ef18451b462c224f660f1327d855cec4d681fcc'
  checksumType  = 'sha256'
  checksum64    = 'ddf244ae20ccb97cb696937417d3af0d0c7d6dd2a090a07654a4c0537e2b1b4e'
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