$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.372.07.1/amazon-corretto-8.372.07.1-windows-x64-jre.msi'
  Checksum64 = '62f5ce1863a832bfdbabbebacaa821f1'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
