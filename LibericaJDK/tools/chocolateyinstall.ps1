$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/14+36/bellsoft-jdk14+36-windows-amd64.msi'
  Checksum64 = '9DC2385B2B5603B68C00DE3DF40CF2984FBF1B2C'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
