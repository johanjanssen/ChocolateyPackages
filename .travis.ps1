cd $Env:PACKAGE
choco pack
choco install $Env:PACKAGE --force -s .
$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

$error.clear()
try { 
	java -version
} catch { exit 1 }




