$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/8u392%2B9/bellsoft-jre8u392%2B9-windows-amd64.msi'
  Checksum64 = '744510eeed65ec3ea55edf1cebd791845fac274c'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
