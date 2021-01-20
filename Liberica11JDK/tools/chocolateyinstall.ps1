$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.10+9/bellsoft-jdk11.0.10+9-windows-amd64.msi'
  Checksum64 = 'aabdbea44621d2fd835dba819d207a7c296521c1'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
