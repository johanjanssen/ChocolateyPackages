$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.2+8/bellsoft-jdk15.0.2+8-windows-amd64-full.msi'
  Checksum64 = '4baedfd8d9a6c0985e385126ec4d45d180b19e84'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
