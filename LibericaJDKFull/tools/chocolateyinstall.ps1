$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/20%2B37/bellsoft-jdk20%2B37-windows-amd64-full.msi'
  Checksum64 = 'f1b5c400c89b9bbee4eb3405a58d3e9986eb96a3'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
