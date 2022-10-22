$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-windows-amd64.msi'
  Checksum64 = 'c66e585756b3aefcf6a41994d26e89ee50afd2cb'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
