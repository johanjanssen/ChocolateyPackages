$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.7+10/bellsoft-jdk11.0.7+10-windows-amd64.msi'
  Checksum64 = '864B7DB78BBBD125381C3DB557906DF0A0F1AA6D'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
