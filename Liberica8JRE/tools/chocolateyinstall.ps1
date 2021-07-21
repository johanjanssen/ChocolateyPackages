$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u302+8/bellsoft-jre8u302+8-windows-amd64.msi'
  Checksum64 = '7a197aaaec2d9d63dc13ae4fdbe113d78d3fd5de'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
