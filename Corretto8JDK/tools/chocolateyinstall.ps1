$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.242.08.1/signed.amazon-corretto-8.242.08.1-windows-x64.msi'
  Checksum64 = 'c7fe58988dc28382dac87918fbae0cfd'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
