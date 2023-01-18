$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.362.08.1/amazon-corretto-8.362.08.1-windows-x64-jdk.msi'
  Checksum64 = 'd08821fe464a9d29bba40eda070774a8'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
