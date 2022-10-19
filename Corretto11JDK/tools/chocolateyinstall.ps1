$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.17.8.1/amazon-corretto-11.0.17.8.1-windows-x64.msi'
  Checksum64 = 'a99b09ae4337926cad43283c12dc1d8f'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
