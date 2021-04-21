$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.11+9/bellsoft-jre11.0.11+9-windows-amd64-full.msi'
  Checksum64 = '4372c6e8291ba4861947af746d61b6046ef0a93c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
