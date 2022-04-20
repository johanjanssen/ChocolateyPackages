$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-18.0.1/sapmachine-jre-18.0.1_windows-x64_bin.msi'
  Checksum64 = '7bfc6f37991a2f926e7a16aa84a12a5a3eb927b98f28bf2f4c71221b8ea5dfac'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
