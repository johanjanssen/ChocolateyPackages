$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\OpenJDK"

$packageArgs = @{
    PackageName      = $env:ChocolateyPackageName
    UnzipLocation    = $targetDir = $installDir
    Url64            = 'https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-x64_windows_11.0.3_7.zip'
    Checksum64       = '595BA894D2CF7857FD59D8532FFD6D25E80211F7012EBCB4E5A9258770412484'
    ChecksumType64   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' $targetDir\openjdk-11u-11.0.3+7 'Machine'
# The full path instead of the %JAVA_HOME% is needed so it can be removed with the Chocolatey Uninstall
Install-ChocolateyPath $targetDir\openjdk-11u-11.0.3+7\bin -PathType 'Machine'
