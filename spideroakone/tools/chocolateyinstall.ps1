$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/share/M5XWYZDFNY/retriever/f%3A/Fetch/7.1.0/SpiderOakONE-7.1.0-msi_x86.msi'
$url64      = 'https://spideroak.com/share/M5XWYZDFNY/retriever/f%3A/Fetch/7.1.0/SpiderOakONE-7.1.0-msi_x64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = 'cb795c2d56ba90cd1c71c8a8e54f0b99d324f24b334fdf56c40b8cd94e3f2b78'
  checksumType  = 'sha256'
  checksum64    = '197f9069bc117f9dfd1416eb9b28170a0e78dfc2955aea31ba520ef98ab9b6e1'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















