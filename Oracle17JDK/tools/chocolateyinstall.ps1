$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.oracle.com/java/17/archive/jdk-17.0.2_windows-x64_bin.msi'
  Checksum64 = 'ccc63393c70cdf6135acf788e076b0d95abdad85615a20d6d4d94e29b8280c08'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
