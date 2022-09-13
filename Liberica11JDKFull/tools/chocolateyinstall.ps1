$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.16.1%2B1/bellsoft-jdk11.0.16.1%2B1-windows-amd64-full.msi'
  Checksum64 = '956e778f6580d3997e903e7426db8668fd711603'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
