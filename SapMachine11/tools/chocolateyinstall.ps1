$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.18/sapmachine-jdk-11.0.18_windows-x64_bin.msi'
  Checksum64 = 'b1abd3dc3ce98c6dfad3e2cc5d66900701411824896c21f5ea88ab2524472203'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
