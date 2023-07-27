$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.382.05.1/amazon-corretto-8.382.05.1-windows-x64-jdk.msi'
  Checksum64 = '0c9604ade02e72671f9d6837835d5f5e'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
