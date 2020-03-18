$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\Corretto"

Uninstall-ChocolateyEnvironmentVariable 'JAVA_HOME' 'Machine'
rm -r "$installDir\jre8"

$pathToUnInstall = "$installDir\jre8\bin"

$statementTerminator = ";"

$actualPath = [System.Collections.ArrayList](Get-EnvironmentVariable -Name 'Path' -Scope 'Machine' -PreserveVariables).split($statementTerminator)


if ($actualPath -contains $pathToUnInstall)
{
	Write-Host "PATH environment variable contains $pathToUnInstall. Removing..."
	
	$actualPath.Remove($pathToUnInstall)	
	$newPath =  $actualPath -Join $statementTerminator

	$cmd = "Set-EnvironmentVariable -Name 'Path' -Value `'$newPath`' -Scope 'Machine'"

    if (Test-ProcessAdminRights) {
        Invoke-Expression $cmd
    } else {
        Start-ChocolateyProcessAsAdmin "$cmd"
    }
}

# Remove parent directory if there are no installations left
If ((Get-ChildItem -Force $installDir) -eq $Null) {
    rmdir $installDir 
}