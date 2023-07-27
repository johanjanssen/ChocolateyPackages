$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.8/sapmachine-jdk-17.0.8_windows-x64_bin.msi'
  Checksum64 = '0d15003d81f8f49b6fb13c787fe483fa6060811a37a120703e3270df4886e85b'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
