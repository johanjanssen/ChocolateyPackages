$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.9.11.2/amazon-corretto-11.0.9.11.2-windows-x64.msi'
  Checksum64 = '14fca3a834a33c82d786c63db5a44488'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
