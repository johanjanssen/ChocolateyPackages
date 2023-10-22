$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.21/sapmachine-jdk-11.0.21_windows-x64_bin.msi'
  Checksum64 = '0c7506594d6b3b5208335adeec9d28bf4987387489541d5e0feab85470badaff'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
