$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/19.0.2.7.1/amazon-corretto-19.0.2.7.1-windows-x64.msi'
  Checksum64 = 'c0e1d9c2b7b05a9f30a7e4682481ee61'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
