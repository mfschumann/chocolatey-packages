$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/share/M5XWYZDFNY/retriever/c%3A/Fetch/SpiderOak%20One/7.5.0/SpiderOakONE-7.5.0-msi_x86.msi'
$url64      = 'https://spideroak.com/share/M5XWYZDFNY/retriever/c%3A/Fetch/SpiderOak%20One/7.5.0/SpiderOakONE-7.5.0-msi_x64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = 'a6cd33b797f2252dad20bbf158ca1b33ee378932faeea7fc0bc2461ace727580'
  checksumType  = 'sha256'
  checksum64    = '510d51586448222e1c4ebd32b42edd6c0f8251a5e72778af911d85b30232e43f'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















