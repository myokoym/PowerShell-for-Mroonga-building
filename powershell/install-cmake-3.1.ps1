$cmakeVersion = "3.1.3"

Invoke-WebRequest -Uri http://www.cmake.org/files/v3.1/cmake-${cmakeVersion}-win32-x86.zip -OutFile cmake.zip

$pathToZip = "$pwd\cmake.zip"
#Load the assembly
[System.Reflection.Assembly]::LoadWithPartialName("System.IO.Compression.FileSystem") | Out-Null
[System.IO.Compression.ZipFile]::ExtractToDirectory($pathToZip, $pwd)

# set Path
$Env:Path = "$pwd\cmake-${cmakeVersion}-win32-x86\bin;" + $Env:Path