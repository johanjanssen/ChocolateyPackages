$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.4/sapmachine-jre-17.0.4_windows-x64_bin.msi'
  Checksum64 = '7d29db37820271597f5b2d316c2c025715d2bba09b84f4276d7f4a616249bca1'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
