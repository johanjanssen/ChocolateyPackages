$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u312+7/bellsoft-jdk8u312+7-windows-amd64.msi'
  Checksum64 = '0c53bf62af3e8a4a2cb293c97658bdb1da66cda8'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
