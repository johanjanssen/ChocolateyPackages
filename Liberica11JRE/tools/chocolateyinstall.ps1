$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.8+10/bellsoft-jre11.0.8+10-windows-amd64.msi'
  Checksum64 = 'c9c8d92a326d854f8b1a460509dd587e61362b0a'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
