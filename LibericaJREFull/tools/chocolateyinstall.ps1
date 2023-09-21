$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21%2B37/bellsoft-jre21%2B37-windows-amd64-full.msi'
  Checksum64 = 'fa29862353c37b51431ce20ce568e3437a6521b4'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
