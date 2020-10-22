$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.1+9/bellsoft-jdk15.0.1+9-windows-amd64-lite.msi'
  Checksum64 = '9cd6b527ea4c5e46671badc2e0a9c1348a43ba3a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
