$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-windows-amd64-full.msi'
  Checksum64 = '2b13b6788643ff40529047f645bcf1a83c9c33b2'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
