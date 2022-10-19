$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/19.0.1.10.1/amazon-corretto-19.0.1.10.1-windows-x64.msi'
  Checksum64 = 'a2fb972f6da27412cad0150426960413'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
