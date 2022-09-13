$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.16/sapmachine-jre-11.0.16_windows-x64_bin.msi'
  Checksum64 = 'fbefc6d24f70ac60db6dd6cdd6bcc1ec90fd4d4855bdc62bf06cfc1e8a003659'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
