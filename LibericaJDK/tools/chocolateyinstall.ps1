$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\Liberica'
    Url64            = 'https://download.bell-sw.com/java/12.0.2/bellsoft-jdk12.0.2-windows-amd64.zip'
    Checksum64       = 'A6870289838B8529A3C3528395668A83705F6959'
    ChecksumType64   = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12.0.2 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\Liberica\jdk-12.0.2\bin' -PathType 'Machine'
