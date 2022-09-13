$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-windows-amd64-lite.msi'
  Checksum64 = 'aa62e8fbaff6bed3f393a10017e9efcb8876ad2f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
