$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/17.0.2.8.1/amazon-corretto-17.0.2.8.1-windows-x64.msi'
  Checksum64 = '7ce3400529094045e87a2ab58e503130'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
