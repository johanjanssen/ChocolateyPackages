$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.19.7.1/amazon-corretto-11.0.19.7.1-windows-x64.msi'
  Checksum64 = 'c0a13a0252ef030d66b5db4af13f29e8'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
