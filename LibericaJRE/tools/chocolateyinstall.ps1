$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-windows-amd64.msi'
  Checksum64 = 'a9ac727e690a549092d3857072546dca5d914e22'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
