$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.6+10/bellsoft-jdk11.0.6+10-windows-amd64.msi'
  Checksum64 = 'EECA06A7A5A62774D1B7232DA710F518F2B170A1'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
