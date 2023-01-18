$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.18.10.1/amazon-corretto-11.0.18.10.1-windows-x64.msi'
  Checksum64 = 'e47cafffbf07baba0ef93c1fa52e9be2'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
