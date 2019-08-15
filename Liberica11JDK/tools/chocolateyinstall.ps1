﻿$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\Liberica'
    Url64            = 'https://github.com/bell-sw/Liberica/releases/download/11.0.2/bellsoft-jdk11.0.2-windows-amd64.zip'
    Checksum64       = '4F2109361256B33A15CD8A6E2C21BC473875C05A'
    ChecksumType64   = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-11.0.2 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Liberica\jdk-11.0.2\bin' -PathType 'Machine'
