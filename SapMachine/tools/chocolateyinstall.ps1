$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-20.0.1/sapmachine-jdk-20.0.1_windows-x64_bin.msi'
  Checksum64 = '90cfd91c0e0d80eb5d15720e158f2fcf7aecb231afd66f4980f464ad51caa662'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
