$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/11.0.6+10/bellsoft-jdk11.0.6+10-windows-amd64-full.msi'
  Checksum64 = 'B7087A8DE5676008298392CA267BC2474073E4DE'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
