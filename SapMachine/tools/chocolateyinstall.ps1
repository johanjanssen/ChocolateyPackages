$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-14/sapmachine-jdk-14_windows-x64_bin.msi'
  Checksum64 = '77C5B352E27C04DA13138C7AC3E62CAA3761D6B57642C8CA79CE12FE752C3540'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
