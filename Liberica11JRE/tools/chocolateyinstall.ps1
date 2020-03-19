$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/11.0.6+10/bellsoft-jre11.0.6+10-windows-amd64.msi'
  Checksum64 = '27496A3148D1CC37FF67CDE1719A6112262211C4'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
