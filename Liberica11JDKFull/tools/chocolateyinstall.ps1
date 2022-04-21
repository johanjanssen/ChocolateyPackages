$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.15%2B10/bellsoft-jdk11.0.15%2B10-windows-amd64-full.msi'
  Checksum64 = '2bfa27283ac06c2fd9e33603e330fe7c4047a974'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
