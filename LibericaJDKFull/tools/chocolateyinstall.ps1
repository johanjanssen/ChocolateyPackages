$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.1+9/bellsoft-jdk16.0.1+9-windows-amd64-full.msi'
  Checksum64 = '58eee7efaa09e4479796c77071afb9ea4e7a7eb1'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
