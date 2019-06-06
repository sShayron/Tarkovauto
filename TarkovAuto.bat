@ECHO OFF

START "" "c:\Games\Tarkov\BsgLauncher.exe"

:LOOP
TASKLIST | FIND /I "EscapeFromTarkov.exe"
IF ERRORLEVEL 1 (
    TIMEOUT /T 5
    GOTO LOOP
)

TIMEOUT /T 30
PowerShell "$Process = Get-Process EscapeFromTarkov; $Process.ProcessorAffinity=1365; $Process.PriorityClass=[System.Diagnostics.ProcessPriorityClass]::AboveNormal;"