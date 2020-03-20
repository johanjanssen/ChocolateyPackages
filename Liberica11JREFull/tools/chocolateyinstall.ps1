$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/11.0.6+10/bellsoft-jre11.0.6+10-windows-amd64-full.msi'
  Checksum64 = '3A147FFBADC47C1392EC76F6F14DC8679249D06A'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
