$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19.0.1%2B11/bellsoft-jre19.0.1%2B11-windows-amd64-full.msi'
  Checksum64 = 'b00c3f568cbbb64a3d24143513a41550f3cd8509'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
