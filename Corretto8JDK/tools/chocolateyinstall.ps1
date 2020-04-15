$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.252.09.1/amazon-corretto-8.252.09.1-windows-x64.msi'
  Checksum64 = '43e17c2a75d2e21969385deaec44b702'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
