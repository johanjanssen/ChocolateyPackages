$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.7/sapmachine-jdk-17.0.7_windows-x64_bin.msi'
  Checksum64 = 'c3de4d9568fd61294c2b400e2050cb397ae9164e5e7f935287639635683dc2c6'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
