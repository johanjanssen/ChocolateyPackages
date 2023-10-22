$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/17.0.9%2B11/bellsoft-jre17.0.9%2B11-windows-amd64-full.msi'
  Checksum64 = 'd08dadbf22ceffb6f1dee37a2e6d3cff15fa0e08'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
