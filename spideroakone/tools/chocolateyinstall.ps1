$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/share/M5XWYZDFNY/retriever/f%3A/Fetch/7.0.1/SpiderOakONE-7.0.1-msi_x86.msi'
$url64      = 'https://spideroak.com/share/M5XWYZDFNY/retriever/f%3A/Fetch/7.0.1/SpiderOakONE-7.0.1-msi_x64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = 'f1fef80d3b7d0e18d36f3a33b53954999de45f1604ceeac78c57a5d177338181'
  checksumType  = 'sha256'
  checksum64    = 'f38021df59c14772331c91a1aa6f1b1fdd82e742163158870b8600347608863e'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















