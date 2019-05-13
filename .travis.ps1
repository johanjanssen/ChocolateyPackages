#!/c/Windows/System32/WindowsPowerShell/v1.0/powershell

choco install $Env:PACKAGE
# refreshenv  # <-- useless
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 
echo $Env:Path
java -version
