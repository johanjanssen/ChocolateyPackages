$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.11.9.1/amazon-corretto-11.0.11.9.1-windows-x64.msi'
  Checksum64 = 'e8d6065eb0bfa39bbc49f3ed93baec8d'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
