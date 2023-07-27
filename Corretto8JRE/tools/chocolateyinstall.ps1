$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.382.05.1/amazon-corretto-8.382.05.1-windows-x64-jre.msi'
  Checksum64 = '2db6eedd7c53fb7b8afb60468dcca437'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
