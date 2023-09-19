$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/21.0.0.35.1/amazon-corretto-21.0.0.35.1-windows-x64.msi'
  Checksum64 = '6305b10c4cac77f8230e9289f37b45c6'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
