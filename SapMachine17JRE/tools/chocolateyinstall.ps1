$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.4.1/sapmachine-jre-17.0.4.1_windows-x64_bin.msi'
  Checksum64 = '7e516a32ca890b6488923f361fd048a44d1e58d8ea5963093edf47dd75d0daf8'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
