$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.9.1/sapmachine-jre-11.0.9.1_windows-x64_bin.msi'
  Checksum64 = 'E32539992B78A46D0F7ED2BB317D189E75C8E55C8B42F33E19E500629FEA4155'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
