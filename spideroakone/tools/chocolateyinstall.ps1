$ErrorActionPreference = 'Stop';

$packageName= 'spideroakone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://spideroak.com/getbuild?platform=win&version=6.1.5&arch=msi'
$url64      = 'https://spideroak.com/getbuild?platform=win&version=6.1.5&arch=msi_x64'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'SpiderOakONE*'

  checksum      = 'D9722BEEE8D4F7862456042173CA63B5B3DCC7ABD5167891373BD37A050187D0'
  checksumType  = 'sha256'
  checksum64    = '06F716D3E3084F7A00A4E230F9420090E4C3A3EC93063C2A487C30CF73072ABE'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















