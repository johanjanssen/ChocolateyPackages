$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/13.0.2+9/bellsoft-jdk13.0.2+9-windows-amd64-full.msi'
  Checksum64 = '2481C0DB15869ACDEE91DF4BC88059AB3A866FF8'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
