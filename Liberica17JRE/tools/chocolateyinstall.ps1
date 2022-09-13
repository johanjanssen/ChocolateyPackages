$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4%2B8/bellsoft-jre17.0.4%2B8-windows-amd64.msi'
  Checksum64 = '1070abfa924a94bab31831491ada09dcb196de42'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
