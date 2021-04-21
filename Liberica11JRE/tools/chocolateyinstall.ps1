$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.11+9/bellsoft-jre11.0.11+9-windows-amd64.msi'
  Checksum64 = 'd5daa6fe4e37e8c6f15784d541402c59bf75c736'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
