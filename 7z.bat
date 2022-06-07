@ECHO OFF
FOR %%i IN (*.*) DO (
ECHO "%%i" | FIND /I "7z.bat" 1>NUL) || (
"C:\Program Files\7-Zip\7z.exe" a -t7z "%%~ni.7z" "%%i"
if %ERRORLEVEL% == 0 del "%%i"
)
)