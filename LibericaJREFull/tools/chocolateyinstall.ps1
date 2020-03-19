$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'http://download.bell-sw.com/java/13.0.2+9/bellsoft-jre13.0.2+9-windows-amd64-full.msi'
  Checksum64 = '8476D3AB474A54FF8DDCBCF15A842B10CFAA6F29'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
