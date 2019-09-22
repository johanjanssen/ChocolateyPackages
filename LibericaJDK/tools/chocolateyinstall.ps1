$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/13/bellsoft-jdk13-windows-amd64.msi'
  Checksum64 = '98fa8219320e9e90eae5aaba20cee3db588ec844'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
