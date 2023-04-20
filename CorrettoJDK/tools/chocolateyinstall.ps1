$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/20.0.1.9.1/amazon-corretto-20.0.1.9.1-windows-x64.msi'
  Checksum64 = '54d2f59ceb21d356c89834a17c2a824a'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
