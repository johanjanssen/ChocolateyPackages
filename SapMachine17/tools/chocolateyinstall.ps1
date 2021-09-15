$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17/sapmachine-jdk-17_windows-x64_bin.msi'
  Checksum64 = '8C200A79F754BB20E71FBE4A1C2AC1A1ECDD85B4AFC08EE2560E50D58AE9EECE'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
