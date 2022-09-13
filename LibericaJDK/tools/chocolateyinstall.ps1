$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-windows-amd64.msi'
  Checksum64 = 'cd1e7308039ae81ef7f933da6ff23537a553ba7d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
