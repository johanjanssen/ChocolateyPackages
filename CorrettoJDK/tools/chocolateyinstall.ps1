$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.8.10.1/amazon-corretto-11.0.8.10.1-windows-x64.msi'
  Checksum64 = '1665f0d106db98670981e0cc7e5cc5f3'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
