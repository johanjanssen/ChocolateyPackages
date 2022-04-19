$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/17.0.3.6.1/amazon-corretto-17.0.3.6.1-windows-x64.msi'
  Checksum64 = 'b12937e409521e3d77c473d8adcfec05'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
