$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.1%2B10/bellsoft-jre20.0.1%2B10-windows-amd64-full.msi'
  Checksum64 = '9c469f3177fbf851c47bab992a510224339d0b22'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
