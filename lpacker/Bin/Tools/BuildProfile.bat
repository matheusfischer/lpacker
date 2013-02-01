@echo off

set /p OldBuildProfile=<..\BuildProfile
echo Using "%OldBuildProfile%".
set /p BuildProfile=Change Profile to: 
echo %BuildProfile%> ..\BuildProfile
echo Done.