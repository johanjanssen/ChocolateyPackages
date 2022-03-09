$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.14%2B9/bellsoft-jre11.0.14%2B9-windows-amd64-full.msi'
  Checksum64 = '0170bd588514683207da4c6fa8ae9f7ebf7ecbc7'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
