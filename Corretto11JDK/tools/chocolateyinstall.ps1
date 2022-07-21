$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.16.8.1/amazon-corretto-11.0.16.8.1-windows-x64.msi'
  Checksum64 = 'd19f5a9d6aaf871c6e42534d27f275da'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
