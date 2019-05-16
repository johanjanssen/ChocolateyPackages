cd $Env:PACKAGE
choco pack
choco install $Env:PACKAGE --force -s .
$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

If ($Env:PACKAGE -eq WildFly) {
	$error.clear()
	try { 
		cd C:\Program Files\WildFly\wildfly-16.0.0.Final\bin
		echo/|standalone.bat --version
	} catch { exit 1 }
	exit 0
}

$error.clear()
try { 
	java -version
} catch { exit 1 }




