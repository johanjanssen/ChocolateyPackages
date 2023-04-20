$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u372%2B7/bellsoft-jdk8u372%2B7-windows-amd64.msi'
  Checksum64 = '1fbd4e4aef8796fb70fc2e42265a9311b7a0f170'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
