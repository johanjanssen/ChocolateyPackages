$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-14.0.2/sapmachine-jre-14.0.2_windows-x64_bin.msi'
  Checksum64 = '439006B60C516EABE141B4B588298CBDCA8A031DAE7D8FD64C89DB48760DB67B'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
