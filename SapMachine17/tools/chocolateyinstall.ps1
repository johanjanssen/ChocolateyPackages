$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.5/sapmachine-jdk-17.0.5_windows-x64_bin.msi'
  Checksum64 = 'd019d731661bfab909ad0cc1fc5119f243f65ded63f2b0d7d15afc9eb587f56e'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
