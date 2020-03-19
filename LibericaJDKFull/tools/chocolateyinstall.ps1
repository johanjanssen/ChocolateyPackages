$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/14+36/bellsoft-jdk14+36-windows-amd64-full.msi'
  Checksum64 = 'EFCF01A438004E2572A0C5F49DBA97879D35E67C'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
