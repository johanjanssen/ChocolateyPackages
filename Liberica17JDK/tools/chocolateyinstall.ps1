$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.4.1%2B1/bellsoft-jdk17.0.4.1%2B1-windows-amd64.msi'
  Checksum64 = '4210c4efa02def1387c1c83ba63c74fbbc560e80'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
