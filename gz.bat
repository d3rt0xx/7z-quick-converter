@ECHO OFF
FOR %%i IN (*.*) DO (
ECHO "%%i" | FIND /I "gz.bat" 1>NUL) || (
"C:\Program Files\7-Zip\7z.exe" a -tgzip "%%~ni.gz" "%%i"
if %ERRORLEVEL% == 0 del "%%i"
)
)