$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.7+10/bellsoft-jre11.0.7+10-windows-amd64.msi'
  Checksum64 = '6BA3FB1DC20F9FCD1B50B687D572EE9767498157'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
