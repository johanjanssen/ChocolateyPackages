$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.275.01.1/amazon-corretto-8.275.01.1-windows-x64.msi'
  Checksum64 = 'e6b0bf7e5cd55795dfc1db3da04c0c18'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
