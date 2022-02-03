$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u322%2B6/bellsoft-jdk8u322%2B6-windows-amd64.msi'
  Checksum64 = 'bd99fab2055ca90fd0e7905230382f1e47a313c0'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
