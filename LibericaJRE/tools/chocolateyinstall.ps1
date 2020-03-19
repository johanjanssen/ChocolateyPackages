$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/13.0.2+9/bellsoft-jre13.0.2+9-windows-amd64.msi'
  Checksum64 = '58B63AAB212B582F787132B4984D70B0C3E8E857'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
