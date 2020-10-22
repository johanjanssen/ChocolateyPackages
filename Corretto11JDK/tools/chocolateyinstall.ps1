$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.9.11.1/amazon-corretto-11.0.9.11.1-windows-x64.msi'
  Checksum64 = '0ab01b0195deb0e4ac1c5606455d86ea'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
