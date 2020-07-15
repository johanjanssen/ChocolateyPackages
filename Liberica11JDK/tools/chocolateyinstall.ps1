$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/11.0.8+10/bellsoft-jdk11.0.8+10-windows-amd64.msi'
  Checksum64 = '2bb81a1c0dac85034755287ead37ff41f3e24ad5'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
