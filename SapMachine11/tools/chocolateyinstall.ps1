$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.6/sapmachine-jdk-11.0.6_windows-x64_bin.msi'
  Checksum64 = 'BE68B1DCE3CAA079C204501E718F188E8EB17CEB7A546C192A13E24879537DB7'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
