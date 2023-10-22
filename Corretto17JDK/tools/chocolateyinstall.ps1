$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/17.0.9.8.1/amazon-corretto-17.0.9.8.1-windows-x64.msi'
  Checksum64 = '7f1a6e49ffc44084fe20c122e273d092'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
