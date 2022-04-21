$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-windows-amd64-lite.msi'
  Checksum64 = '1f53863b335326c76ab22db5c192bab677b64a88'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
