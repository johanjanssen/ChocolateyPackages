$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/15.0.2.7.1/amazon-corretto-15.0.2.7.1-windows-x64.msi'
  Checksum64 = 'b0a2566947db06989ff31d1e8797a776'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
