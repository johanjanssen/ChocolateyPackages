$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.12+7/bellsoft-jre11.0.12+7-windows-amd64-full.msi'
  Checksum64 = '6e947c1f7dad6be902be736e7984eca176366e73'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
