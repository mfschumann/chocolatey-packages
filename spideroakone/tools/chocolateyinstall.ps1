$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/share/M5XWYZDFNY/retriever/d%3A/Fetch/7.3.0/SpiderOakONE-7.3.0-msi_x86.msi'
$url64      = 'https://spideroak.com/share/M5XWYZDFNY/retriever/d%3A/Fetch/7.3.0/SpiderOakONE-7.3.0-msi_x64.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = 'f865889d131bd521b6c4ab8ad49d8c362340b9a72cbc558cd5e45511daf84450'
  checksumType  = 'sha256'
  checksum64    = 'a05f5dbf84a052c2f1c3e7d44278f0e0ce358c9967188c14a5f0f76ca05e47fd'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















