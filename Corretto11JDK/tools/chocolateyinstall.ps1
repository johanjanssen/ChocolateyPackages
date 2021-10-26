$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.13.8.1/amazon-corretto-11.0.13.8.1-windows-x64.msi'
  Checksum64 = '285c47a5bdfe2fc30607f45eb5926889'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
