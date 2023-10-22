$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.392.08.1/amazon-corretto-8.392.08.1-windows-x64-jdk.msi'
  Checksum64 = '5832b6ddc0b621fdd4dc90f197fd4c33'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
