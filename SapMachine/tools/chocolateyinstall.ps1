$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = 'C:\Program Files\SapMachine'
    Url64            = 'https://github.com/SAP/SapMachine/releases/download/sapmachine-12.0.2/sapmachine-jdk-12.0.2_windows-x64_bin.zip'
    Checksum64       = '6B2D360412AD2D998BE257BEA4B2FBAAA95FDA6E1F6CFDBD2D1D6108220F03AB'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\sapmachine-jdk-12.0.2 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath 'C:\Program Files\SapMachine\sapmachine-jdk-12.0.2\bin' -PathType 'Machine'
