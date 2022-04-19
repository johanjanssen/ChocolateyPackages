$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.15.9.1/amazon-corretto-11.0.15.9.1-windows-x64.msi'
  Checksum64 = '358d13e4490f88f97e9eddba8c1e3f31'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
