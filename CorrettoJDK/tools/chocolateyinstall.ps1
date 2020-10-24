$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/15.0.1.9.1/amazon-corretto-15.0.1.9.1-windows-x64.msi'
  Checksum64 = 'd878258028db025acef50dabdbc7c16c'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
