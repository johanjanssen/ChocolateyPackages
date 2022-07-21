$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/18.0.2.9.1/amazon-corretto-18.0.2.9.1-windows-x64.msi'
  Checksum64 = '99cecaa2b742ead919f1a89e9e411258'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
