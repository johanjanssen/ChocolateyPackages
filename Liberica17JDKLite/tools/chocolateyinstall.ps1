$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4.1%2B1/bellsoft-jdk17.0.4.1%2B1-windows-amd64-lite.msi'
  Checksum64 = '6719b3036a3eb7f819bdd5f9deab21bfc18f0f21'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
