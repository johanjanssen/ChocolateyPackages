$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-windows-amd64.msi'
  Checksum64 = 'c75c405f8d1d4c449abb376615b722ef9706516c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
