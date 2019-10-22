$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u232%2B10/bellsoft-jdk8u232%2B10-windows-amd64.msi'
  Checksum64 = '9e53972758a3c21299329777c6895861b80df14c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
