$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-13.0.1/sapmachine-jdk-13.0.1_windows-x64_bin.msi'
  Checksum64 = '0E40036E3D227E12BB10720D83404E02AFEA37C8B55908B60D1F0CA384149B01'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
