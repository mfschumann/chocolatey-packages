$ErrorActionPreference = 'Stop';

$packageName= 'ukinternationalkeyboard'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://zolid.com/uk-intl-kb/ukint20a.zip'
$url64      = $url


$getArgs = @{
	packageName	= $packageName
	fileFullPath= Join-Path $toolsDir 'setup.zip'
	url 		= $url
	url64		= $url64
	checksum      = '4A8683469C30C7E0FD8DDB03ECF44BD0ECED8DEBDFB46D5201A431DB92898361'
	checksumType  = 'sha256'
	checksum64    = $checksum
	checksumType64= $checksumType
}

Get-ChocolateyWebFile @getArgs

$zipArgs = @{
	fileFullPath= Join-Path $toolsDir 'setup.zip'
	destination	= Join-Path $toolsDir 'setup'
}

Get-ChocolateyUnzip @zipArgs

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'MSI'
  file 			= Join-Path $zipArgs['destination'] 'ukint20a_i386.msi'
  file64		= Join-Path $zipArgs['destination'] 'ukint20a_amd64.msi'
  
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item (Join-Path $toolsDir 'setup*') -Recurse












