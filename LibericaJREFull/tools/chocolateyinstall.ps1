$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21.0.1%2B12/bellsoft-jre21.0.1%2B12-windows-amd64-full.msi'
  Checksum64 = '4283ee18e4df473a85b2d2bcc0881dc2ff6407ac'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
