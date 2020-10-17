$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.265.01.1/amazon-corretto-8.265.01.1-windows-x64.msi'
  Checksum64 = '9a25f9da47fee024fb69a92765738300'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
