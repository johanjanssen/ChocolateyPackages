cd $Env:PACKAGE
choco pack
choco install $Env:PACKAGE --force -s .
$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

If ($Env:PACKAGE -eq "WildFly") {
	$error.clear()	
	try { 
		$basename = Get-ChildItem -Path $path -Recurse -Filter "wildfly.*.nupkg" | select -expandproperty basename
		$version = $basename -replace 'wildfly.',''
		Get-Content "C:\Program Files\WildFly\wildfly-$version.Final\modules\system\layers\base\org\jboss\as\product\wildfly-full\dir\META-INF\MANIFEST.MF"
	} catch { exit 1 }
	exit 0
}

$error.clear()
try { 
	java -version
} catch { exit 1 }




