$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/18.0.2%2B10/bellsoft-jdk18.0.2%2B10-windows-amd64.msi'
  Checksum64 = '41f5b262cfbcf59789de58eb6f4ba507197c0f19'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
