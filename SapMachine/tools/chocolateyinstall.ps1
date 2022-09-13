$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-18.0.2.1/sapmachine-jdk-18.0.2.1_windows-x64_bin.msi'
  Checksum64 = 'f2b9d5955f5d9d38539d2b278bf6fc5baba35e4c3737e265c2976ad7920d0e69'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
