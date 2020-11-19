$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.9.1/sapmachine-jdk-11.0.9.1_windows-x64_bin.msi'
  Checksum64 = '44CEB6D1DE3A819187BD4ADC4702303ACF9493BE3442282AEA8EF3DF16F7ADA8'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
