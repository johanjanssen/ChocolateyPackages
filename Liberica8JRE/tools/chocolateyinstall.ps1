$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u252+9/bellsoft-jre8u252+9-windows-amd64.msi'
  Checksum64 = '85F5C11DEE0CBF3C65FAA5E48394B47CF9174C75'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
