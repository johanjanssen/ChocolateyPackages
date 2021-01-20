$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.10/sapmachine-jdk-11.0.10_windows-x64_bin.msi'
  Checksum64 = 'C33C0FD78CF41E8DC309773B84F8D9ACE7C10357B6EE5DB33CDC4285B70147B1'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
