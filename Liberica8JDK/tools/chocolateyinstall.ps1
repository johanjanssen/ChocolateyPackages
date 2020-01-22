$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u242+7/bellsoft-jdk8u242+7-windows-amd64.msi'
  Checksum64 = '2A6923F448540B3B743910C4DEC09F6471E4CD53'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
