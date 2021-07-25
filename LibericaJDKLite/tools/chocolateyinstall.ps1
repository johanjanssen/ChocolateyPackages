$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.2+7/bellsoft-jdk16.0.2+7-windows-amd64-lite.msi'
  Checksum64 = '399db4207ec36185b83aaaa0bcd993f0eb8d5b32'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
