$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17.0.1+12/bellsoft-jre17.0.1+12-windows-amd64.msi'
  Checksum64 = '63ca415fa95470ff1968a89ae351e1ef0a1b4911'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
