$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u292+10/bellsoft-jre8u292+10-windows-amd64.msi'
  Checksum64 = 'f97b4bcff2ca72aaffef91ae330646767f34075a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
