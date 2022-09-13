$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.4.1/sapmachine-jdk-17.0.4.1_windows-x64_bin.msi'
  Checksum64 = '15a5c0ef268e4c979311294abe95c996560f1cb4c56f15a14ad6bb93a48f035e'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
