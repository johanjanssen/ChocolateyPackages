$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-windows-amd64-full.msi'
  Checksum64 = '431c0336c283855afb6aa53bf0296f1a7e0bcb7d'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
