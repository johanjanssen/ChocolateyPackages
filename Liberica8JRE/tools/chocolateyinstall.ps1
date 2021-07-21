﻿$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u302+8/bellsoft-jre8u302+8-windows-amd64.msi'
  Checksum64 = '386bc0c4a6817c195d1e7f4b427c7692500d5870'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
