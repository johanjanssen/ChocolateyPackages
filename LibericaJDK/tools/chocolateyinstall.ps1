$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\Liberica'
    Url64            = 'https://download.bell-sw.com/java/12.0.1/bellsoft-jdk12.0.1-windows-amd64.zip'
    Checksum64       = '6E06B7416152EF3E1DC3BF170485ABC22F3D1DF6'
    ChecksumType64   = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12.0.1 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Liberica\jdk-12.0.1\bin' -PathType 'Machine'
