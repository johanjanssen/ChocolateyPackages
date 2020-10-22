$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/15.0.1+9/bellsoft-jdk15.0.1+9-windows-amd64-full.msi'
  Checksum64 = '6e9672d4b053d538c994ad4d46eb3944ea9ba94b'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
