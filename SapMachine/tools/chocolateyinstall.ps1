$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-15.0.2/sapmachine-jdk-15.0.2_windows-x64_bin.msi'
  Checksum64 = 'C191330B46E49F15D331BF07C94B77F6CEE428C4AE7C09F1D6E9AFA6D7F94356'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
