$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17+35/bellsoft-jdk17+35-windows-amd64-full.msi'
  Checksum64 = '04cd6231ba5824bab1086950733bf7bbef0737dd'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
