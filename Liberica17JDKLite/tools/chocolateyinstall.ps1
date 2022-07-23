$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4%2B8/bellsoft-jdk17.0.4%2B8-windows-amd64-lite.msi'
  Checksum64 = 'ce64333d23b534ffbe629b852c3013d0021c3c5f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
