$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.13+8/bellsoft-jre11.0.13+8-windows-amd64-full.msi'
  Checksum64 = '94855bfecb411b13f24536488268dcb403be9bb5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
