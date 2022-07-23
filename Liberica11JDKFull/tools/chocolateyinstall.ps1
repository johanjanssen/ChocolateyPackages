$packageArgs = @{
  PackageName = $env:ChocolateyPackageName
  Url64bit = 'https://github.com/bell-sw/Liberica/releases/download/11.0.16%2B8/bellsoft-jdk11.0.16%2B8-windows-amd64-full.msi'
  Checksum64 = 'c351db9cadea2389145062c810ca2b5019a50163'
  ChecksumType64 = 'sha1'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs
