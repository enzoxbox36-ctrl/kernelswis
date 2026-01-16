@echo off
title Chargement...
setlocal EnableDelayedExpansion

set progress=0

:loading
cls

:: Cercle ASCII animé selon le pourcentage
if %progress% lss 13 (
    echo      (     )
) else if %progress% lss 25 (
    echo      (  o  )
) else if %progress% lss 38 (
    echo      (  oo )
) else if %progress% lss 50 (
    echo      ( ooo )
) else if %progress% lss 63 (
    echo      ( oooo)
) else if %progress% lss 75 (
    echo      (ooooo)
) else if %progress% lss 88 (
    echo      (ooooo)
) else (
    echo      (#####)
)

echo.
echo        Chargement : %progress%%%

timeout /t 1 >nul
set /a progress+=5

if %progress% leq 100 goto loading

cls
echo ✔ Chargement terminé !
pause