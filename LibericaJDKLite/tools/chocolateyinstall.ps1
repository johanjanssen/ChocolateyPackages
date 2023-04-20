$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-windows-amd64-lite.msi'
  Checksum64 = 'd62733ef5723036723f8f99205b22f6f68ecb524'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
