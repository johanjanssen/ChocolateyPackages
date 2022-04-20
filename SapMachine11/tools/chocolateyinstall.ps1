$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.15/sapmachine-jdk-11.0.15_windows-x64_bin.msi'
  Checksum64 = 'd1b9abfc864af8b63f14204b9cf09fb95f477573dee9ba1b516d0c44e963a854'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
