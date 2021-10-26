$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.13+8/bellsoft-jdk11.0.13+8-windows-amd64.msi'
  Checksum64 = '1f60382bceaf9e860e27dbe26aa3483ebdca085b'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
