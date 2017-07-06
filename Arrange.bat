@echo off
mkdir 2.2\en\SYSTEM
copy Credits.txt 2.2\Credits.txt
copy LICENSE 2.2\LICENSE
copy README 2.2\README
for /f "skip=1 usebackq tokens=2-3 delims=," %%a in ("contents.csv") do (
	echo %%a
	copy en%%a 2.2\en%%a
)
CScript zip.vbs 2.2 2.2.zip
rd /s /q 2.2
mkdir 2.1\en\SYSTEM
copy Credits.txt 2.1\Credits.txt
copy LICENSE 2.1\LICENSE
copy README 2.1\README
for /f "skip=1 usebackq tokens=2-3 delims=," %%a in ("contents.csv") do (
	echo %%a
	copy en%%a 2.1\en%%b
)
CScript zip.vbs 2.1 2.1.zip
rd /s /q 2.1
pause