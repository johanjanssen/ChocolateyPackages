$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.21%2B10/bellsoft-jre11.0.21%2B10-windows-amd64-full.msi'
  Checksum64 = 'e9e44355b0225b18f4e240ee021fa50716e96827'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
