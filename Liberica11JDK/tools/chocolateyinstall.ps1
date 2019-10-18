$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.5/bellsoft-jdk11.0.5-windows-amd64.msi'
  Checksum64 = 'e22d218b600aa6ebb8f4c76a35411870d0b52e3c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
