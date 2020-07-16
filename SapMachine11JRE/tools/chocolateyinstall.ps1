$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.8/sapmachine-jre-11.0.8_windows-x64_bin.msi'
  Checksum64 = 'DFDC0470515C65E0AAA0A63AD30835725D88E19DD3B97802BE44E956A8B91F0B'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
