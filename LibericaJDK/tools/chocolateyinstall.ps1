$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/12.0.2/bellsoft-jdk12.0.2-windows-amd64.msi'
  Checksum64 = 'f80a78ab4a640a2a0c85ca3a72801ab99334cc04'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
