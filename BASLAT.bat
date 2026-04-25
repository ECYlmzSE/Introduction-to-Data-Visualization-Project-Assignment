@echo off
setlocal
cd /d "%~dp0"

echo [INFO] Baslatiliyor...

if not exist ".venv\Scripts\python.exe" (
    echo [INFO] Sanal ortam yok. Kurulum baslatiliyor...
    call "%~dp0kurulum.bat"
    if not %errorlevel%==0 (
        echo [HATA] Kurulum basarisiz.
        pause
        exit /b 1
    )
)

echo [INFO] Program calisiyor...

call ".venv\Scripts\activate.bat"

python main.pyw

pause
