$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.8+10/bellsoft-jre11.0.8+10-windows-amd64-full.msi'
  Checksum64 = '8b6f2824c59477da0ed4b8d50542f2a543ac7b6f'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
