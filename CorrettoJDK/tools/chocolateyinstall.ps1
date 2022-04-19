$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/18.0.1.10.1/amazon-corretto-18.0.1.10.1-windows-x64.msi'
  Checksum64 = '056a9a97eb26298293f0c7e4b041d0ba'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
