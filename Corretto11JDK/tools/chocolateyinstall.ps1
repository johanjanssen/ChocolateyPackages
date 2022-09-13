$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.16.9.1/amazon-corretto-11.0.16.9.1-windows-x64.msi'
  Checksum64 = '6aad5ded9571ef0afa4638fa63c103a1'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
