$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/16.0.1+9/bellsoft-jre16.0.1+9-windows-amd64-full.msi'
  Checksum64 = '9767a67d5b6e3db75b4e1f037aef00b9839291e4'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
