$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/share/M5XWYZDFNY/retriever/f%3A/Fetch/7.2.0/SpiderOakONE-7.2.0-msi_x86.msi'
$url64      = 'https://spideroak.com/share/M5XWYZDFNY/retriever/f%3A/Fetch/7.2.0/SpiderOakONE-7.2.0-msi_x64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = '20bd8fa72e588bf2e88ca001f180dc7b88a9693e01324c0b3dbf2d467ec9ec11'
  checksumType  = 'sha256'
  checksum64    = '2501bc126b5cd0bf45de9a373f475a97f6e81720218ad9bffec2d3100fe772ef'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















