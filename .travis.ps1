cd $Env:PACKAGE
choco pack
choco install $Env:PACKAGE -dv --force -s .
$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

$error.clear()
try { 
	java -version
} catch { travis_terminate 1; }




