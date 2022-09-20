$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/19.0.0.36.1/amazon-corretto-19.0.0.36.1-windows-x64.msi'
  Checksum64 = '4835dbce31d89ddc653e3526309e40c0'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
