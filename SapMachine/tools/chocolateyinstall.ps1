$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-18.0.2/sapmachine-jdk-18.0.2_windows-x64_bin.msi'
  Checksum64 = 'e1425b92154d35aecc2940c31fe8e1d000541eb53f3021d8b3b30a15c9827a0b'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
