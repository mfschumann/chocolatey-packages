$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/share/M5XWYZDFNY/retriever/c%3A/Fetch/SpiderOak%20One/7.5.1/SpiderOakONE-7.5.1-msi_x86.msi'
$url64      = 'https://spideroak.com/share/M5XWYZDFNY/retriever/c%3A/Fetch/SpiderOak%20One/7.5.1/SpiderOakONE-7.5.1-msi_x64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = '00e9ee18e133fa0298492f3dda7f8eaedd99d2a71adfe19fe606f0613d0ab4b5'
  checksumType  = 'sha256'
  checksum64    = '59ef0dcc90265efd209e05887965d7587686556d88980dfa41fdcc9ae76e8bab'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















