$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.6.0.1/sapmachine-jre-11.0.6.0.1_windows-x64_bin.msi'
  Checksum64 = '37914DB8221FD459D5F643FC033257253CD3BC14B5BBF2F52EE0232378D37F00'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
