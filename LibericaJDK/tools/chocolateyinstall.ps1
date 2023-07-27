$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.2%2B10/bellsoft-jdk20.0.2%2B10-windows-amd64.msi'
  Checksum64 = 'd8457a4704d0dcf04f69e882104dc05fbaf28be6'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
