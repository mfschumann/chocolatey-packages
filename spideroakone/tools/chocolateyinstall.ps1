$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/getbuild?platform=win&version=6.1.9&arch=msi'
$url64      = 'https://spideroak.com/getbuild?platform=win&version=6.1.9&arch=msi_x64'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = '81E4C2E84E0271A8206DE7F63F30744E208497822A129691128CB47EE9446B31'
  checksumType  = 'sha256'
  checksum64    = 'C11AD1C99C24D87EECF5B6E4D81F8D1A429AD9BE12FD42CA3AF232C5D5B35627'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















