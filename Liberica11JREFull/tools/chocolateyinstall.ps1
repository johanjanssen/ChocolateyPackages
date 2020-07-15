$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u262+10/bellsoft-jre8u262+10-windows-amd64-full.msi'
  Checksum64 = '449226435aafbffbc2387f91ef816da82bcf6fb6'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
