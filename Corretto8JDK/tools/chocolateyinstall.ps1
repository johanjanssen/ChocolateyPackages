$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://d3pxv6yz143wms.cloudfront.net/8.232.09.1/amazon-corretto-8.232.09.1-windows-x64.msi'
  Checksum64 = '620ee139aac5f05ab404006b5e33378f'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
