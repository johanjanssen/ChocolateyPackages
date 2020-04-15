$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u252+9/bellsoft-jdk8u252+9-windows-amd64.msi'
  Checksum64 = '72D0148D02C13E31B3BF03FE6EE59B68E28ABD7F'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
