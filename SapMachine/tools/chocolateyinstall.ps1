$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-18/sapmachine-jdk-18_windows-x64_bin.msi'
  Checksum64 = '3dab23815e519256cbba8a6a09830bbf06da624a6e4f5906e439df245a41c092'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
