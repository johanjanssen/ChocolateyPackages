$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/17.0.1.12.1/amazon-corretto-17.0.1.12.1-windows-x64.msi'
  Checksum64 = 'cea7ca94b2930e5b5a5785b047e10769'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
