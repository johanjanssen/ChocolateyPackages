$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-21/sapmachine-jdk-21_windows-x64_bin.msi'
  Checksum64 = 'cb81b42cfa7d1cf822525ee76b69eb526449749aa48e030dfded16a9a3e1292b'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
