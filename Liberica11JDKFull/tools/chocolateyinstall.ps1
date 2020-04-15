$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.7+10/bellsoft-jdk11.0.7+10-windows-amd64-full.msi'
  Checksum64 = 'EF67F91C008979E2BC6A37865350E4AA233413E4'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
