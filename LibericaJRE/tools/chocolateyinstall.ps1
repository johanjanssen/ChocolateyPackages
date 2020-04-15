$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/14.0.1+8/bellsoft-jre14.0.1+8-windows-amd64.msi'
  Checksum64 = 'B3DEE644E6027EFC11D590E07B8A3666CACAD7D0'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
