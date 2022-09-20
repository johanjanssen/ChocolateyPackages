$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-19/sapmachine-jdk-19_windows-x64_bin.msi'
  Checksum64 = '6861f3dbb9577c6b14502f181b07702f07e12b1695df74ede7023f2328c1ff72'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
