$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-17.0.9/sapmachine-jdk-17.0.9_windows-x64_bin.msi'
  Checksum64 = 'e94736b15ca932e10aeac44017597998c518ebeb11728f22961fc4747c0e26cc'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
