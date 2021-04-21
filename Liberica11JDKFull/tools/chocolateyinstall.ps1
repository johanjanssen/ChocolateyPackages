$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.11+9/bellsoft-jdk11.0.11+9-windows-amd64-full.msi'
  Checksum64 = '2ef08d658daa6ff2d0d4b4c0b252c7886aa2d7ec'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
