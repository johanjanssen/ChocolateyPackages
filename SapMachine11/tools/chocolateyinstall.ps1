$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.19/sapmachine-jdk-11.0.19_windows-x64_bin.msi'
  Checksum64 = 'bc6414eadccbb886c6efb80684fd762af70b9f7f7bc36c8ca8502fc217f8198a'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
