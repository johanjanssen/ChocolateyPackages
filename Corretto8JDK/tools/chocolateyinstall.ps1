$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.312.07.1/amazon-corretto-8.312.07.1-windows-x64-jdk.msi'
  Checksum64 = 'c615dea756ecae9575c67ed32a247923'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
