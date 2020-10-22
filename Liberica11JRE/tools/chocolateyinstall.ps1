$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.9+11/bellsoft-jre11.0.9+11-windows-amd64.msi'
  Checksum64 = '6571f7f584007b30b1063332ff5ea7ea50c1ed5f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
