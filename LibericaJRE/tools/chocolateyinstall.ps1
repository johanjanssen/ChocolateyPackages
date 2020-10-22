$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.1+9/bellsoft-jre15.0.1+9-windows-amd64.msi'
  Checksum64 = 'e22705400cbfbb34b5851967c6afe83313d21b66'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
