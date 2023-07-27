$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.8/sapmachine-jre-17.0.8_windows-x64_bin.msi'
  Checksum64 = 'c3e8bff2c80b21adf9955a1c7c07257db0c9df243c0f802f7cb5a12625c0d059'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
