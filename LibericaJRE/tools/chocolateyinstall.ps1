$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21%2B37/bellsoft-jre21%2B37-windows-amd64.msi'
  Checksum64 = '902442f83556b1d532a07adf3876749a94ff13ff'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
