@echo off
echo arranging files for OpenTx2.1.....
mkdir 2.1\en\SYSTEM
copy Credits.txt 2.1\Credits.txt 1>NULL
copy LICENSE 2.1\LICENSE 1>NULL
copy README.md 2.1\README 1>NULL
for /f "skip=1 usebackq tokens=3-4 delims=," %%a in ("contents.csv") do (
	copy en%%a 2.1\en%%b 1>NULL
	if not exist "2.1\en%%b" (
		echo %%a failed
	)
)
echo compressing.....
CScript zip.vbs 2.1 2.1.zip
echo cleaning up.....
rd /s /q 2.1
echo ******************
echo  OpenTX 2.1 done!
echo ******************

echo arranging files for OpenTx2.2.....
mkdir 2.2\en\SYSTEM
copy Credits.txt 2.2\Credits.txt 1>NULL
copy LICENSE 2.2\LICENSE 1>NULL
copy README.md 2.2\README 1>NULL
for /f "skip=1 usebackq tokens=3 delims=," %%a in ("contents.csv") do (
	copy en%%a 2.2\en%%a 1>NULL
	if not exist "2.2\en%%a" (
		echo %%a failed
	)
)
echo compressing.....
CScript zip.vbs 2.2 2.2.zip
echo cleaning up.....
rd /s /q 2.2
echo ******************
echo  OpenTX 2.2 done!
echo ******************

echo arranging files for OpenTx2.3.....
mkdir 2.3\en\SYSTEM
copy Credits.txt 2.3\Credits.txt 1>NULL
copy LICENSE 2.3\LICENSE 1>NULL
copy README.md 2.3\README 1>NULL
for /f "skip=1 usebackq tokens=2-3 delims=," %%a in ("contents.csv") do (
	copy en%%b 2.3\en%%a 1>NULL
	if not exist "2.3\en%%a" (
		echo %%b failed
	)
)
echo compressing.....
CScript zip.vbs 2.3 2.3.zip
echo clearing up.....
rd /s /q 2.3
echo ******************
echo  OpenTX 2.3 done!
echo ******************

pause
