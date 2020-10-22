$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u272+10/bellsoft-jdk8u272+10-windows-amd64.msi'
  Checksum64 = 'a5034a636e7e3eea72f12179b7758158b5c4f28d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
