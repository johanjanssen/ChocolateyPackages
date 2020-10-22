$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.9+11/bellsoft-jre11.0.9+11-windows-amd64-full.msi'
  Checksum64 = '1b566decd70f96c145c82019ac68a1aa76731594'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
