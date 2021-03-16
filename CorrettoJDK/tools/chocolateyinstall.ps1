$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/16.0.0.36.1/amazon-corretto-16.0.0.36.1-windows-x64.msi'
  Checksum64 = '204399e186e6194d2a85bc084cd46f07'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
