$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21%2B37/bellsoft-jdk21%2B37-windows-amd64.msi'
  Checksum64 = '9ec87a3410749cfe0f5d151f75fcbea3f05bdec9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
