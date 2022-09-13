$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.342.07.3/amazon-corretto-8.342.07.3-windows-x64-jre.msi'
  Checksum64 = '3f4495c944fedb5d876615f28dce5319'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
