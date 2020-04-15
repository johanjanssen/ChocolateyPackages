$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/14.0.1+8/bellsoft-jre14.0.1+8-windows-amd64-full.msi'
  Checksum64 = '9A0D01162FE87836452C2119D5291DADA929A1AD'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
