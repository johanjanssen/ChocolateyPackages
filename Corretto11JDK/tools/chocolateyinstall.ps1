$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.21.9.1/amazon-corretto-11.0.21.9.1-windows-x64.msi'
  Checksum64 = '1a6d59cbab01a13d6b28c2c0afb0ef96'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
