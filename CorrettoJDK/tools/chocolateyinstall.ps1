$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/16.0.1.9.1/amazon-corretto-16.0.1.9.1-windows-x64.msi'
  Checksum64 = 'f188cbd9d224802ba91e4e91944d980f'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
