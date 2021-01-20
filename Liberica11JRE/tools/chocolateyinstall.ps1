$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.10+9/bellsoft-jre11.0.10+9-windows-amd64.msi'
  Checksum64 = '1e4268b0df04eb64628a2e42784dd04e2010731c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
