$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.9/sapmachine-jdk-11.0.9_windows-x64_bin.msi'
  Checksum64 = 'B14746D04C6D498746CF5AC9F1DAC87E5464412856AC2CAD3D6CD83EC47FCD6D'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
