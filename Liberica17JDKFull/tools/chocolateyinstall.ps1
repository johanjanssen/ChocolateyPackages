$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17.0.1+12/bellsoft-jdk17.0.1+12-windows-amd64-full.msi'
  Checksum64 = 'b9f080a8c77981de723e2c07f463a5991461aea9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
