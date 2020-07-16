$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.8/sapmachine-jre-11.0.8_windows-x64_bin.zip'
  Checksum64 = '2F3BA1CAE2E5170B9F12E41D80B303FD8F654A1AC1DF40F750C5EAB8C4C6D3A0'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
