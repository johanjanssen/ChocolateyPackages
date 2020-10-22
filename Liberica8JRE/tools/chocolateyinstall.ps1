$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u272+10/bellsoft-jre8u272+10-windows-amd64.msi'
  Checksum64 = 'b9aa6f2c6ffd06e36905f3b6669efb4892cbceb8'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
