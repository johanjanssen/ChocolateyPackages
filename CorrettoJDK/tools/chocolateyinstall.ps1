$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/20.0.0.33.1/amazon-corretto-20.0.0.33.1-windows-x64.msi'
  Checksum64 = '1ad7b74b41eba436fbd8966026854fd8'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
