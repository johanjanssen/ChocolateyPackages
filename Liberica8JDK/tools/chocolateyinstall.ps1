$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u282+8/bellsoft-jdk8u282+8-windows-amd64.msi'
  Checksum64 = 'e2827c5c6103b7cec3c4dd01596c344858432bd2'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
