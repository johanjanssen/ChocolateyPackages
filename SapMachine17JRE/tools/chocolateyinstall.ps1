$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.5/sapmachine-jre-17.0.5_windows-x64_bin.msi'
  Checksum64 = '5835852da062bdb950f2c5245a32fcd69d8c50e11fdd8c735c2af6684e045bc7'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
