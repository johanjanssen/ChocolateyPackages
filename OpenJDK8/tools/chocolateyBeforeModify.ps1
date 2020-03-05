$pathToUnInstall = 'C:\Program Files\OpenJDK\openjdk-8u242-b08\bin'

$actualPath = (Get-EnvironmentVariable -Name 'Path' -Scope 'Machine' -PreserveVariables) -split ';'

if ($actualPath -contains $pathToUnInstall)
{
	Write-Host "PATH environment variable contains $pathToUnInstall. Removing..."
	
	$actualPath.Remove($pathToUnInstall)	
	$newPath =  $actualPath -Join ';'

	$cmd = "Set-EnvironmentVariable -Name 'Path' -Value $newPath -Scope 'Machine'"

    if (Test-ProcessAdminRights) {
        Invoke-Expression $cmd
    } else {
        Start-ChocolateyProcessAsAdmin "$cmd"
    }
}

