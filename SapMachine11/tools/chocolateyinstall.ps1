$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\SapMachine'
    Url64            = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.3/sapmachine-jdk-11.0.3_windows-x64_bin.zip'
    Checksum64       = 'dd1299a577fd8f61003eb20baf999a3135ba968f0620f37a477f96afc2c1fc3b'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\sapmachine-jdk-11.0.3 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\SapMachine\sapmachine-jdk-11.0.3\bin' -PathType 'Machine'
