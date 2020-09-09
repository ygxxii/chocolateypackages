$ErrorActionPreference = 'Stop'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'DingTalk'  #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  fileType      = 'exe' #only one of these: MSI or EXE (ignore MSU for now)
  silentArgs    = "/S"
  validExitCodes= @(0)
}