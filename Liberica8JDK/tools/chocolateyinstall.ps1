$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u275+1/bellsoft-jdk8u275+1-windows-amd64.msi'
  Checksum64 = '03930818325ae39ce3b443f27f6cb17864dc37dc'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
