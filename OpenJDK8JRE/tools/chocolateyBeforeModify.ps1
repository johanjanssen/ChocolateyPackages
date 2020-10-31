$programFiles = (${env:ProgramFiles}, ${env:ProgramFiles(x86)} -ne $null)[0]
$installDir = "$programFiles\OpenJDK"

$pathToUnInstall = "$installDir\openjdk-8u272-b10-jre\bin"

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

