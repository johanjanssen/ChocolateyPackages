$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.13/sapmachine-jdk-11.0.13_windows-x64_bin.msi'
  Checksum64 = '9EE09A12D22014381CEB21BA22300083A98BBD5185CAF77548BBDF929A50C5F9'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
