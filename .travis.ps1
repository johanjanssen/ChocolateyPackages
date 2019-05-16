cd $Env:PACKAGE
try {
	choco pack
	choco install $Env:PACKAGE --force -s .
} catch { exit 1}
$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

If ($Env:PACKAGE -eq "WildFly") {
	$basename = Get-ChildItem -Path $path -Recurse -Filter "wildfly.*.nupkg" | select -expandproperty basename
	$version = $basename -replace 'wildfly.',''
	$file = "C:\Program Files\WildFly\wildfly-$version.Final\modules\system\layers\base\org\jboss\as\product\wildfly-full\dir\META-INF\MANIFEST.MF"
	If (Test-Path $file) {
		Get-Content $file
		exit 0
	}
	Else {
		exit 1
	}
}

$error.clear()
try { 
	java -version
} catch { exit 1 }




