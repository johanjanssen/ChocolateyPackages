$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15+36/bellsoft-jdk15+36-windows-amd64-lite.msi'
  Checksum64 = 'a9d27f802a4a96e16b7993fce31a447e39d698c4'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
