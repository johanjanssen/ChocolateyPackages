$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17+35/bellsoft-jdk17+35-windows-amd64-lite.msi'
  Checksum64 = '593257c947064669c7f890ad3169096ad4566be8'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
