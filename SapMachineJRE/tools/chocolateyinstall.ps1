$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-14/sapmachine-jre-14_windows-x64_bin.msi'
  Checksum64 = 'BA41703BEE51AD907B8FC28992F0FCB2DD90FFB2ED09BCC95CDE2D369FF5410B'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
