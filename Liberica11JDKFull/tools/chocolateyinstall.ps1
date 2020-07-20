$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.8+10/bellsoft-jdk11.0.8+10-windows-amd64-full.msi'
  Checksum64 = '078c3daee998e1a2073e36f7a3c5df03848c31a2'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
