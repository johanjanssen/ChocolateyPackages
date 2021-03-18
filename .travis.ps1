cd $Env:PACKAGE
choco pack
choco install $Env:PACKAGE --force -s .

$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

If ($Env:PACKAGE -eq "WildFly") {
	$basename = Get-ChildItem -Path $path -Recurse -Filter "wildfly.*.nupkg" | select -expandproperty basename
	$version = $basename -replace 'wildfly.',''
	$file = "C:\Program Files\WildFly\wildfly-$version.Final\modules\system\layers\base\org\jboss\as\product\main\dir\META-INF\MANIFEST.MF"
	If (Test-Path $file) {
		Get-Content $file
		exit 0
	}
	Else {
		echo "WildFly MANIFEST.MF file not found"
		exit 1
	}
}

If ($Env:PACKAGE -eq "JMC" -Or $Env:PACKAGE -eq "AdoptOpenJDKJMC") {
	try {
		jmc -version
		exit 0
	} catch {
		echo "jmc -version failed"
		exit 1
	}
}

$error.clear()
try { 
	java -version
} catch { 
	echo "java -version failed"
	exit 1
}




