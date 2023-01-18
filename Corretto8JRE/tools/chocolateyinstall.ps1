$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://corretto.aws/downloads/resources/8.362.08.1/amazon-corretto-8.362.08.1-windows-x64-jre.msi'
  Checksum64 = '256a3dfc6293ce89baddd3d9a91bbf44'
  ChecksumType64 = 'md5'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
