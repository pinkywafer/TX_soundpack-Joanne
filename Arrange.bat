@echo off
mkdir 2.1\en\SYSTEM
for /f "skip=1 usebackq tokens=2-3 delims=," %%a in ("contents.csv") do (
	echo %%a
	copy en%%a 2.1\en%%b
)
pause