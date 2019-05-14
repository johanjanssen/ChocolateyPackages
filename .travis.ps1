choco install $Env:Package
# refreshenv  # <-- useless
$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
echo $Env:Path
java -version
