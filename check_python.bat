@echo off
echo "Controlliamo se hai python...."
if exist "C:\Program Files\Python39\python.exe" (
    echo "Python trovato"
) else (
    echo "Python non trovato"
)
