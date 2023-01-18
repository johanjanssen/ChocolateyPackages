$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u362%2B9/bellsoft-jdk8u362%2B9-windows-amd64.msi'
  Checksum64 = 'c0af01fc43131dcff545a8a033efa38e63d5bd5f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
