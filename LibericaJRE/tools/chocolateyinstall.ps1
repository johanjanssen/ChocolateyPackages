$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/21.0.1%2B12/bellsoft-jre21.0.1%2B12-windows-amd64.msi'
  Checksum64 = 'cb8ca3535bcd681c31459a14d210db8a40da5c2e'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
