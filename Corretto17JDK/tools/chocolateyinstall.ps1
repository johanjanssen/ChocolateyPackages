$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/17.0.4.9.1/amazon-corretto-17.0.4.9.1-windows-x64.msi'
  Checksum64 = '6bd2927f6c57da858b98cfbe5ffb1383'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
