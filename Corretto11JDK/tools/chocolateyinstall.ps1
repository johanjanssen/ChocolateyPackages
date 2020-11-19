$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.9.12.1/amazon-corretto-11.0.9.12.1-windows-x64.msi'
  Checksum64 = '69e851557df745b6196f804322af5aa6'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
