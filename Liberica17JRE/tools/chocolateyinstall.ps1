$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/17+35/bellsoft-jre17+35-windows-amd64.msi'
  Checksum64 = '49472b65723be825a167b948f1db46dbd9d95881'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
