$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.5%2B8/bellsoft-jdk17.0.5%2B8-windows-amd64-lite.msi'
  Checksum64 = 'ce11eb8d1a17e0a76c1696c29125ca789eb67dc1'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
