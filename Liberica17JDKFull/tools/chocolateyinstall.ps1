$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.5%2B8/bellsoft-jdk17.0.5%2B8-windows-amd64-full.msi'
  Checksum64 = 'cd90b3d18fde15a2c7d0070c0f895d227ff3a2c8'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
