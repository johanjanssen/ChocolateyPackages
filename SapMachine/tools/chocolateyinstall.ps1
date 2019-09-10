$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-12.0.2/sapmachine-jdk-12.0.2_windows-x64_bin.msi'
  Checksum64 = 'E34B877AA4A8416DB161A4939A3F9E8EBC03602433E6866B0427FE1C744B24D8'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
