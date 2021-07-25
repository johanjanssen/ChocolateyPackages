$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.2+7/bellsoft-jdk16.0.2+7-windows-amd64-full.msi'
  Checksum64 = 'bf8b6a2a87dbb3ce56d40eec4567b2427de76e5c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
