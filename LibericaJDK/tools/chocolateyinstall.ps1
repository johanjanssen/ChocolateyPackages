$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15+36/bellsoft-jdk15+36-windows-amd64.msi'
  Checksum64 = 'e5d246e8f7d320dbe1b58a290e31517d0887252e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
