$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u275+1/bellsoft-jre8u275+1-windows-amd64.msi'
  Checksum64 = '0f1a9f48c4c7050a5145345d409097d65e119f86'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
