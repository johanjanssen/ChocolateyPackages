$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19%2B37/bellsoft-jdk19%2B37-windows-amd64-lite.msi'
  Checksum64 = '4d1a4615f13537557b3b3bfabb05f43dc7ea16b8'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
