$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/14.0.1+8/bellsoft-jdk14.0.1+8-windows-amd64.msi'
  Checksum64 = 'B5C7ED74F189ACA5882C0FFBD77544863CF8F929'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
