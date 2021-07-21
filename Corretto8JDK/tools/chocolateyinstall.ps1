$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.302.08.1/amazon-corretto-8.302.08.1-windows-x64-jdk.msi'
  Checksum64 = '94b9fa36a6b36c0f81a58ad3291b73cc'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
