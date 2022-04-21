$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.3%2B7/bellsoft-jre17.0.3%2B7-windows-amd64-full.msi'
  Checksum64 = '5e098e4e66679fdc2e4f8983f8833d1ccb1f73e1'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
