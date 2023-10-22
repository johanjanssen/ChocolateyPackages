$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.9%2B11/bellsoft-jdk17.0.9%2B11-windows-amd64-full.msi'
  Checksum64 = '67f8fd9254c8d2b2ed811c285b21fba183e1a7c5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
