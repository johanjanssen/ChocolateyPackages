$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/14+36/bellsoft-jdk14+36-windows-amd64-lite.msi'
  Checksum64 = '288D912124469D8F4FC24135635EAFE6E7FEE671'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
