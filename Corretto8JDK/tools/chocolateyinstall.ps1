$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.372.07.1/amazon-corretto-8.372.07.1-windows-x64-jdk.msi'
  Checksum64 = '86da34e702971240eea613e87e6693b5'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
