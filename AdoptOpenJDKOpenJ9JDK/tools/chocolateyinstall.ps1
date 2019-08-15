$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\AdoptOpenJDK'
    Url64            = 'https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jdk_x64_windows_openj9_12.0.1_12_openj9-0.14.1.zip'
    Checksum64       = 'c788c03d58ecb875b1a719591b455cfe89a204293d1fabb7fa88767d545d47cd'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\jdk-12.0.1+12 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\AdoptOpenJDK\jdk-12.0.1+12\bin' -PathType 'Machine'
