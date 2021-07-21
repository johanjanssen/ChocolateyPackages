$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://download.bell-sw.com/java/8u302+8/bellsoft-jdk8u302+8-windows-amd64.msi'
  Checksum64 = '0c2ba004f35d6c8895bb7fee4f884d58edaf51d9'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
