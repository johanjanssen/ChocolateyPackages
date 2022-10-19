$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.17/sapmachine-jdk-11.0.17_windows-x64_bin.msi'
  Checksum64 = '3fceee9b7f9a4ba73a846413f71a2b015f05dc0e5929d43f2e8c466c47e45032'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
