$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.5/sapmachine-jdk-11.0.5_windows-x64_bin.msi'
  Checksum64 = '4F009A62AF201CF8B3125772903C9C95993FB73E7A4A332DC8D35C35E78A80BF'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
