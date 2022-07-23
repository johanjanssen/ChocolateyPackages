$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.4/sapmachine-jdk-17.0.4_windows-x64_bin.msi'
  Checksum64 = 'cb119809efc211981ae81570a22009d880f4d3ec51fd88ce0f54728786b911dd'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
