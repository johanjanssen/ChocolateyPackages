$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/18.0.0.37.1/amazon-corretto-18.0.0.37.1-windows-x64.msi'
  Checksum64 = '829e67bffa8f8bfa7356ba11b0aef71b'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
