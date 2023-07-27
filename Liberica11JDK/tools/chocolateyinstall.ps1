$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.20%2B8/bellsoft-jdk11.0.20%2B8-windows-amd64.msi'
  Checksum64 = '0d0c4ea8ce8932a99b19fd69d786357c1123123a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
