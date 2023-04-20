$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-windows-amd64-full.msi'
  Checksum64 = '3456306ab6be0a726789bf947c5085d38800c7ed'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
