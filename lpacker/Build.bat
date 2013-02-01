@echo off
set BuildSource=.\Source\*.*
set /p LastBuildNo=<.\Builds\BuildNo
set /a BuildNo=%LastBuildNo%+1
set /p BuildProfile=<.\Builds\BuildProfile
set BuildDate=%date%
set BuildTime=%time%
set BuildDir=.\Builds\%BuildProfile%\%BuildNo%\
set BuildFile=package.love
set BuildPath=%BuildDir%%BuildFile%

mkdir %BuildDir%

.\Bin\7za.exe a -tzip %BuildPath% %BuildSource% -r

explorer %BuildDir%
start %BuildPath% --console

echo %BuildNo% > .\Builds\BuildNo
echo [%BuildDate% %BuildTime%] Build No. %BuildNo% completed using [%BuildProfile%] >> .\Builds\BuildManifest