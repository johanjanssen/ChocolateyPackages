$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-18.0.2.1/sapmachine-jre-18.0.2.1_windows-x64_bin.msi'
  Checksum64 = '50251d0ada8d261b888390d41a425651ac3fd516810a8d71d020c6d3d7244553'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
