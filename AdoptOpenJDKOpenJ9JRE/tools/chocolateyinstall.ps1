$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\AdoptOpenJDK'
    Url64            = 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_x64_windows_openj9_12.0.1_12_openj9-0.14.1.zip'
    Checksum64       = '55b827dbcba370b9b527b6db1bfea485d555e1626c76389c3d635fca1d4257be'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12.0.1+12-jre 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk-12.0.1+12-jre\bin' -PathType 'Machine'
