$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2%2B10/bellsoft-jdk18.0.2%2B10-windows-amd64-lite.msi'
  Checksum64 = '6cec7e795b2b93ababc3635bd7709a206aa11470'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
