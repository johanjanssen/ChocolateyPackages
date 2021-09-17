$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/17.0.0.35.1/amazon-corretto-17.0.0.35.1-windows-x64.msi'
  Checksum64 = '3827f0419e3c2b4619be3dc9e8c11cf4'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
