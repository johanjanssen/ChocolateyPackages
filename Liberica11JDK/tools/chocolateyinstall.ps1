$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.14%2B9/bellsoft-jdk11.0.14%2B9-windows-amd64.msi'
  Checksum64 = '7ab884df115a52a2d462f0181b036b606de922d8'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
