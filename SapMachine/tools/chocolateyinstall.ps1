$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.1/sapmachine-jdk-17.0.1_windows-x64_bin.msi'
  Checksum64 = 'D2C3D49239F7725D3722E7130FB04A9F7FDBF72B2EDF7CCE88246C3DFCD73D00'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
