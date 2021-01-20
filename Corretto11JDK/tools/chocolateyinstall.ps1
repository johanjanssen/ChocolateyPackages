$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.10.9.1/amazon-corretto-11.0.10.9.1-windows-x64.msi'
  Checksum64 = 'ee569a19016f233b2050cc11219ebbfd'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
