$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.17/sapmachine-jre-11.0.17_windows-x64_bin.msi'
  Checksum64 = 'fd1796497ed01dce1c0441b415a45327e772128dd8a1f7d7597e57203ed452f0'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
