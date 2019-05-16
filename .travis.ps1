cd $Env:PACKAGE
choco pack
choco install $Env:PACKAGE --force -s .
$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

If ($Env:PACKAGE -eq "WildFly") {
	$error.clear()	
	try { 
		Write-Host "try"
		cd "C:\Program Files\WildFly\wildfly-16.0.0.Final\bin"
		(Get-Item -Path ".\").FullName
		echo "Press continue" |.\standalone.bat --version
		Write-Host "end"
	} catch { exit 1 }
	exit 0
}

$error.clear()
try { 
	java -version
} catch { exit 1 }




