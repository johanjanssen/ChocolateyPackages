$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/14.0.2+13/bellsoft-jre14.0.2+13-windows-amd64-full.msi'
  Checksum64 = 'fa47dcf1cead25bd20b2fcf09693d2ed9f231059'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
