$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-windows-amd64-lite.msi'
  Checksum64 = 'bb869ad176d210974cf665c2f8bf09c622cc6d33'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
