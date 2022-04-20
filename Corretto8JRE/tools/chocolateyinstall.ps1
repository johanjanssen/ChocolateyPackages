$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.332.08.1/amazon-corretto-8.332.08.1-windows-x64-jre.msi'
  Checksum64 = '4588FF50E3EFA50224047B1383F99DD3'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
