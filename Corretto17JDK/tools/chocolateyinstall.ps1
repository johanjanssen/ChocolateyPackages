$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/17.0.8.7.1/amazon-corretto-17.0.8.7.1-windows-x64.msi'
  Checksum64 = 'cc151bc12e8fd91dc9a6284b8a552f4b'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
