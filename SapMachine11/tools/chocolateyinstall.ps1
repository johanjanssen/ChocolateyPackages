$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.11/sapmachine-jdk-11.0.11_windows-x64_bin.msi'
  Checksum64 = '6E1E12B524D903F97292D9433E84631671F8C81DDB5B893C36FAD71D33C64578'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
