$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.12/sapmachine-jdk-11.0.12_windows-x64_bin.msi'
  Checksum64 = '73228228040DD2C5F12B04C068091FBC1A5EEA4AC86CE16515E9BE7D18E55785'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
