$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.262.10.1/amazon-corretto-8.262.10.1-windows-x64.msi'
  Checksum64 = '905dd8813fac5fb94af834a2590dd3dc'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
