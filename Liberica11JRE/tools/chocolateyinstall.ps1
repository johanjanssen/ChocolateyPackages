$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.13+8/bellsoft-jre11.0.13+8-windows-amd64.msi'
  Checksum64 = '4f2a413e45acf6fe54afdd08099d31bf203262d4'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
