$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-windows-amd64.msi'
  Checksum64 = 'dbcc43787747b2dcf8be09fd11db7eecefc10fc0'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
