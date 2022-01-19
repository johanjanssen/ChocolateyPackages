$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.2/sapmachine-jre-17.0.2_windows-x64_bin.msi'
  Checksum64 = '51a21aaef1d4cd1a851513deb7a4c5aaf76e46885d98771c78a890b0b7c48306'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
