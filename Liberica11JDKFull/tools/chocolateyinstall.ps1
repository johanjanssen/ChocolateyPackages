$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.12+7/bellsoft-jdk11.0.12+7-windows-amd64-full.msi'
  Checksum64 = 'd95b5457356cb18811e6994759e72e26b4f99144'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
