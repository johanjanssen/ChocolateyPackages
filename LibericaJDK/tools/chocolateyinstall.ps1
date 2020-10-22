$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.1+9/bellsoft-jdk15.0.1+9-windows-amd64.msi'
  Checksum64 = 'bd4c479b7794f1e61e79a7ba4e89aed96e63fb64'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
