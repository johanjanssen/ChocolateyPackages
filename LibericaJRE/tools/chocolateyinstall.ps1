$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.2+7/bellsoft-jre16.0.2+7-windows-amd64.msi'
  Checksum64 = '876ba4d481acace11581cc29ffa79900ce66c285'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
