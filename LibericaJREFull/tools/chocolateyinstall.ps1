$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.1+9/bellsoft-jre15.0.1+9-windows-amd64-full.msi'
  Checksum64 = '635b6961e36e61ce97f2d319a371ec7afab50b7d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
