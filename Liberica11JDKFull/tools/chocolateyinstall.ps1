$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.14%2B9/bellsoft-jdk11.0.14%2B9-windows-amd64-full.msi'
  Checksum64 = 'b15dd197a9537ac1e75571ca5a65e799e993b627'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
