$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.12.7.1/amazon-corretto-11.0.12.7.1-windows-x64.msi'
  Checksum64 = '81d4fa6874e577b10da38bdd0a0c173e'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
