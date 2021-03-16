$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-16/sapmachine-jdk-16_windows-x64_bin.msi'
  Checksum64 = '20E207C5EECA75B61C16C95D82F625F14A368E4330D973824FCC904B34327B2E'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
