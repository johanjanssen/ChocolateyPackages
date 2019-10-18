$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://d3pxv6yz143wms.cloudfront.net/8.232.09.1/amazon-corretto-8.232.09.1-windows-x86.msi'
  Checksum64 = 'f94a12381f63284bcec017f2a9ebfe3c'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
