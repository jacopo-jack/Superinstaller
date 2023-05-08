@echo off
title "Super Installer"
echo "Benvenuto in super Installer, un utility per facilitare la vita al sistemista."
echo "Lo script permette di creare dei pacchetti software personalizzati grazie alla potenza di choco."
echo "Per funzionare correttamente controlla se hai installato chocolatey e python sono fondamentali."
echo "Procediamo?"
set /p choice="Digita 's' per procedere o 'n' per uscire: " 
if "%choice%"=="s" (
    call check_python.bat
    ver | find "Windows 10" > nul
    if %errorlevel% == 0 (
        powershell.exe -ExecutionPolicy Bypass -File Windows10_library.ps1
    ) else (
        call library.py
    )
) else (
    echo "Ok alla prossima."
)
