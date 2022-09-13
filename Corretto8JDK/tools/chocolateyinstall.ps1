$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.342.07.3/amazon-corretto-8.342.07.3-windows-x64-jdk.msi'
  Checksum64 = '2883e8bdb3cdcfefd6bfdc659983d520'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
