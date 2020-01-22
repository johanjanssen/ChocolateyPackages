$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/13.0.2+9/bellsoft-jdk13.0.2+9-windows-amd64.msi'
  Checksum64 = 'FE4BA1DD2F278153D0CBAE18AF4EE284275F99DF'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
