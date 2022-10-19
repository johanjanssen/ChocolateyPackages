$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.352.08.1/amazon-corretto-8.352.08.1-windows-x64-jre.msi'
  Checksum64 = '55b64018042fc42e6c2530d229b790f9'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
