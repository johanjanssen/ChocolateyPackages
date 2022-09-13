$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.16.1/sapmachine-jdk-11.0.16.1_windows-x64_bin.msi'
  Checksum64 = '22c9c8da169f6ba121e2f641a4409e1cf5a32f081dd13487b75952f8d4cd5df1'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
