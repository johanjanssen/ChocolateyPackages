$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.20/sapmachine-jre-11.0.20_windows-x64_bin.msi'
  Checksum64 = 'b51260d33f7d5eb9fbbd414e0b7288ab87585f0f086eaa1f4dbc6997504f26c2'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
