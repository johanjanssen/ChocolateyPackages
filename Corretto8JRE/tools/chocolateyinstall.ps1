$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.392.08.1/amazon-corretto-8.392.08.1-windows-x64-jre.msi'
  Checksum64 = '76b3a2867d7fdca3566e225f993d710b'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
