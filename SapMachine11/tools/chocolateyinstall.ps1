$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.16/sapmachine-jdk-11.0.16_windows-x64_bin.msi'
  Checksum64 = 'b40c3f92bccc2ce2789869bc78cc198cae4e6fe80d956cacadd1b91a3eb79c61'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
