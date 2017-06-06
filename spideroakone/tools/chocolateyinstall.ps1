$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/release/spideroak/msi_x86'
$url64      = 'https://spideroak.com/release/spideroak/msi_x64'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = '8DEE632B4F4659726215CCA0AC412D7193E86EFCB8D2A53C0E59527172367809'
  checksumType  = 'sha256'
  checksum64    = '4D1B445E71F97B6D18EDFD3C8502C983F8AFE826323D168D09C83FEBED8B77F6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















