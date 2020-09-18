$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15+36/bellsoft-jre15+36-windows-amd64-full.msi'
  Checksum64 = '267e19bb4c8310817987897796a3c83837a03603'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
