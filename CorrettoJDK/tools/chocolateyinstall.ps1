$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/16.0.2.7.1/amazon-corretto-16.0.2.7.1-windows-x64.msi'
  Checksum64 = '8685d3dabd212bd04dfaf1c3e69d6727'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
