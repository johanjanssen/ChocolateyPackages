$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.5%2B11/bellsoft-jdk11.0.5%2B11-windows-amd64.msi'
  Checksum64 = 'd68f33295bb6bd9817ebb3e32399497babf4a460'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
