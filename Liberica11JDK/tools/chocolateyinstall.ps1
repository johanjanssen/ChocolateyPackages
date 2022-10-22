$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.17%2B7/bellsoft-jdk11.0.17%2B7-windows-amd64.msi'
  Checksum64 = '11755303654deafdae9749208ddbbb775a1078f5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
