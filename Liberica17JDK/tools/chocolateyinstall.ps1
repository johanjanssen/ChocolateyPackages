$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-windows-amd64.msi'
  Checksum64 = 'cf828927f00a1fd0afd4d862452d1df677eea212'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
