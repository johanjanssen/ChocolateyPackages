$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.10+9/bellsoft-jre11.0.10+9-windows-amd64-full.msi'
  Checksum64 = '68dbcde57289feaf9e18d6e3568636a9ff1adc2b'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
