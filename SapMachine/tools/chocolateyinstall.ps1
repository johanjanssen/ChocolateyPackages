$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-16.0.2/sapmachine-jdk-16.0.2_windows-x64_bin.msi'
  Checksum64 = 'C30E974D859BCF9F76B999771428BFA57F01DD31B44122B0A141AFAFA5F8B261'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
