$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17.0.1+12/bellsoft-jdk17.0.1+12-windows-amd64-lite.msi'
  Checksum64 = '9c26ddf37af1ae356eb744326fbeb04e5ab3c3f9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
