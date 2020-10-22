$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.9/sapmachine-jre-11.0.9_windows-x64_bin.msi'
  Checksum64 = '381A6572231C359A09A4AD9BE71E09515C6899759ED429982CEE43EA29CEC066'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
