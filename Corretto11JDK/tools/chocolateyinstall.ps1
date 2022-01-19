$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.14.9.1/amazon-corretto-11.0.14.9.1-windows-x64.msi'
  Checksum64 = 'efc65b68dfe906ce60eb7f41e98b80b8'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
