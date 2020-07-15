$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/14.0.2+13/bellsoft-jre14.0.2+13-windows-amd64.msi'
  Checksum64 = '5a99f317e486a7464899aef864a1ea6b5b95b05b'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
