$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.2%2B9/bellsoft-jre17.0.2%2B9-windows-amd64-full.msi'
  Checksum64 = 'af8b999d05ecd5c0f681dae9c91e79d6c3c62a67'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
