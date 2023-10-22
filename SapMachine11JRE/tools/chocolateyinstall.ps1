$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.21/sapmachine-jre-11.0.21_windows-x64_bin.msi'
  Checksum64 = '5b11e366cfb0e65d5e484c872da392cbd6786accd5113ba39010a9f785040e2e'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
