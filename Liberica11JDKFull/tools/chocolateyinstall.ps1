$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.13+8/bellsoft-jdk11.0.13+8-windows-amd64-full.msi'
  Checksum64 = '82244b853ad32af0dbc29001feabbc9829f73a5b'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
