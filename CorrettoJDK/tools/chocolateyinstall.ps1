$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.6.10.1/amazon-corretto-11.0.6.10.1-1-windows-x64.msi'
  Checksum64 = 'da93979dde483438e3469c812ed424f3'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
