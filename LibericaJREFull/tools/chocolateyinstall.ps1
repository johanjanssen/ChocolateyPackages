$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2.1%2B1/bellsoft-jre18.0.2.1%2B1-windows-amd64-full.msi'
  Checksum64 = 'a44bae3c79b669521697ccd6653757d207ff043d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
