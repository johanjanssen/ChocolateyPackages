$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-16.0.1/sapmachine-jre-16.0.1_windows-x64_bin.msi'
  Checksum64 = 'AC90DC7764DB6881B82C3A728771F001BB2919DEF22F5BBF61A0A649F1A2B1CA'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
