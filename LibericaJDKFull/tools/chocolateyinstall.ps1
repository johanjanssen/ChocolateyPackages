$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20.0.2%2B10/bellsoft-jdk20.0.2%2B10-windows-amd64-full.msi'
  Checksum64 = '55e547f13d7e68e25327577ea742afbc9de418a8'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
