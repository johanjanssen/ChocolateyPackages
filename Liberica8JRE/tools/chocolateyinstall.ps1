$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u252+9/bellsoft-jre8u252+9-windows-amd64.msi'
  Checksum64 = '2B382FD802B11C837DCBE1D99DDBA5FAC1625AE3'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
