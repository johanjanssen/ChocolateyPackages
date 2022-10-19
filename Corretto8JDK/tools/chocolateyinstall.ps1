$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.352.08.1/amazon-corretto-8.352.08.1-windows-x64-jdk.msi'
  Checksum64 = 'a904430d0898c02609216061c13a52aa'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
