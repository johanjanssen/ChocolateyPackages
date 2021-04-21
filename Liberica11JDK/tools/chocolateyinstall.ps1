$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.11+9/bellsoft-jdk11.0.11+9-windows-amd64.msi'
  Checksum64 = 'f2cde861db4262577ff1dc2ce82c388b3ecfaad5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
