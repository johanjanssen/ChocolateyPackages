$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-windows-amd64.msi'
  Checksum64 = '1734a94cc224c25a0f8ce9756f83f1f835034921'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
