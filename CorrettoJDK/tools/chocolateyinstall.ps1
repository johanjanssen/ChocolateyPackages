$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/20.0.2.9.1/amazon-corretto-20.0.2.9.1-windows-x64.msi'
  Checksum64 = '67163c2b305a88ffdadf0c0c85cbda3d'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
