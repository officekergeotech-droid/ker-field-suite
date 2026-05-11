@echo off
set PORT=8791
set DESKTOP_DIR=%USERPROFILE%\Desktop
start "KER Field Suite Autosave Server" /min "C:\Users\Silvia Barcza\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe" -m http.server %PORT% --bind 127.0.0.1 --directory "%DESKTOP_DIR%"
timeout /t 2 >nul
start "" "http://127.0.0.1:%PORT%/ker-field-suite-autosave.html"
