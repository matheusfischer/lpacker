@echo off

echo 0 > ..\BuildNo
echo Build No. Reset.
echo BUILD MANIFEST > ..\BuildManifest
echo Build Manifest Clear.
set /p BuildProfile=Build Profile: 
echo %BuildProfile%> ..\BuildProfile
echo Build Profile Reset.
echo Done.