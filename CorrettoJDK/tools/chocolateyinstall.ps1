$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/15.0.0.36.1/amazon-corretto-15.0.0.36.1-windows-x64.msi'
  Checksum64 = '8e2b3a766e64b5e2ee62632b8390bf37'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
