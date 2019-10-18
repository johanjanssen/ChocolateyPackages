$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://d3pxv6yz143wms.cloudfront.net/11.0.5.10.1/amazon-corretto-11.0.5.10.1-windows-x64.msi'
  Checksum64 = '836ac2d7e63a817436fbdbbc61921ae9'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
