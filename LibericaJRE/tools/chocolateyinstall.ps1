$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/19%2B37/bellsoft-jre19%2B37-windows-amd64.msi'
  Checksum64 = '470010a0d9efe685aaf0e208e5981843f6a32feb'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
