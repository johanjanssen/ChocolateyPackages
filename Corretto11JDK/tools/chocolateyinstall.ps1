$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.14.10.1/amazon-corretto-11.0.14.10.1-windows-x64.msi'
  Checksum64 = 'bf5c6337840f3a0a043d2ae68923575b'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
