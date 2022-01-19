$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.14/sapmachine-jre-11.0.14_windows-x64_bin.msi'
  Checksum64 = '5aeb6968f9b13ec0fc1694db62ebb3a12bcf6a34871ca3fe2d2a9e88d38f2c23'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
