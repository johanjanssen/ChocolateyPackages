$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/11.0.20.8.1/amazon-corretto-11.0.20.8.1-windows-x64.msi'
  Checksum64 = 'cc5ba184239d7d10055e123e434bc370'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
