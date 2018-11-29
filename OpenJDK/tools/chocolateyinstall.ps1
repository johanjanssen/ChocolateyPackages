$packageName = $env:ChocolateyPackageName
$toolsDir    = Split-Path -Parent $MyInvocation.MyCommand.Definition
$legacyDir   = 'C:\Program Files\OpenJDK'
$url64       = 'https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_windows-x64_bin.zip'
$checksum64  = '289dd06e06c2cbd5e191f2d227c9338e88b6963fd0c75bceb9be48f0394ede21'

#-------------------------------------------------------------------------------
# begin migration

function Uninstall-MyChocolateyPath {
    param(
        [parameter(Mandatory=$true, Position=0)][string] $pathToUninstall,
        [parameter(Mandatory=$false, Position=1)][EnvironmentVariableTarget] $pathType = [EnvironmentVariableTarget]::User
    )
    if ($env:PATH.ToLower().Contains($pathToUnInstall.ToLower())) {
        $statementTerminator = ';'
        Write-Host "PATH environment variable contains $pathToUnInstall. Removing..."
        [Collections.ArrayList]$actualPath = (Get-EnvironmentVariable -Name 'Path' -Scope $pathType -PreserveVariables).Split($statementTerminator)

        $actualPath.Remove($pathToUnInstall)
        $newPath = $actualPath -Join $statementTerminator

        if ($pathType -eq [EnvironmentVariableTarget]::Machine) {
            if (Test-ProcessAdminRights) {
                Set-EnvironmentVariable -Name 'Path' -Value $newPath -Scope $pathType
            } else {
                $psArgs = "UnInstall-ChocolateyPath -pathToUnInstall `'$originalPathToUnInstall`' -pathType `'$pathType`'"
                Start-ChocolateyProcessAsAdmin "$psArgs"
            }
        } else {
            Set-EnvironmentVariable -Name 'Path' -Value $newPath -Scope $pathType
        }
    }
}

if (Test-Path -Path $legacyDir -ErrorAction SilentlyContinue) {
    Write-Debug "Removing legacy installation: $legacyDir"
    Remove-Item -Recurse -Force -Path $legacyDir
    $pathType = [EnvironmentVariableTarget]::Machine
    Uninstall-MyChocolateyPath -PathToUninstall "$legacyDir\jdk-11\bin" -PathType $pathType
    Uninstall-MyChocolateyPath -PathToUninstall "$legacyDir\jdk-11.0.1\bin" -PathType $pathType
}

# end migration
#-------------------------------------------------------------------------------

$pkgArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    url64bit       = $url64
    checksum64     = $checksum64
    checksumType64 = 'sha256'
}
Install-ChocolateyZipPackage @pkgArgs
if (Test-ProcessAdminRights) {
    $pathType = 'Machine'
} else {
    $pathType = 'User'
}
Install-ChocolateyEnvironmentVariable 'JAVA_HOME' "$toolsDir\jdk-11.0.1" $pathType
