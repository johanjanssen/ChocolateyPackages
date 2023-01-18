$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-19.0.2/sapmachine-jdk-19.0.2_windows-x64_bin.msi'
  Checksum64 = 'f4c353d07882c812e48cc6aa6c964caf358cb1a290b1205777f1d73c6a5bdfb1'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
