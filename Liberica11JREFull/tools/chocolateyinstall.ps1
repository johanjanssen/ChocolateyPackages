$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.16%2B8/bellsoft-jre11.0.16%2B8-windows-amd64-full.msi'
  Checksum64 = '756ffdb6b6f25c3fe09c8496b9c060f78fe11598'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
