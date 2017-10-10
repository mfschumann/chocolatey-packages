$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/share/M5XWYZDFNY/retriever/f%3A/Fetch/6.4.0/SpiderOakONE-6.4.0-msi_x86.msi'
$url64      = 'https://spideroak.com/share/M5XWYZDFNY/retriever/f%3A/Fetch/6.4.0/SpiderOakONE-6.4.0-msi_x64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = 'a60300d9733c7e96e754f9ff779abbc6b37f55969b72cd4c0f224309c83f479b'
  checksumType  = 'sha256'
  checksum64    = '71c63589dfb01c97b8b331471bb9ff208da60cc6a210a5c592b731fd8dd09ffe'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















