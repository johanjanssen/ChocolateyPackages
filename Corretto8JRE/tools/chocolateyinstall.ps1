$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.332.08.1/amazon-corretto-8.332.08.1-windows-x64-jre.msi'
  Checksum64 = 'baf2850c7e6ad117308b19f0657b6859'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
