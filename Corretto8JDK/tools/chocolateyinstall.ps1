$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.322.06.1/amazon-corretto-8.322.06.1-windows-x64-jdk.msi'
  Checksum64 = '08fbb93a2dbae6601608e949e7491a7c'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
