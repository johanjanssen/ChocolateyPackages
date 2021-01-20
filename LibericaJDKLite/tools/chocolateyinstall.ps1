$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.2+8/bellsoft-jdk15.0.2+8-windows-amd64-lite.msi'
  Checksum64 = '310dbf481364785a47ae08d7760b58216e63f3e5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
