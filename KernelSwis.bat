::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFD5aVgu+GG6pDaET+NT2+uaTqw0JW+0zRLzCyaCLLdsnxWrISKoE9VUUkcgDbA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIbLQlaSQixK2KpZg==
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIEJxRYDAKNLiuKCaIZ+og=
::dhA7uBVwLU+EWHyK8FcoaBJaT2Q=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE0Uw0PQMUTQiOfHmzAb0IiA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFD5aVgu+GG6pDaET+NT2+uaTqw0JW+0zRKTeyLqLLNME41aqcI4otg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Loading
chcp 65001 >nul
setlocal EnableDelayedExpansion

set progress=0

for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr "IPv4"') do (
    set ip=%%A
    goto done
)

:done
set ip=%ip: =%
goto loading

:loading
cls

:: Changement de couleur
if %progress% lss 50 (
    color 0A
) else (
    color 0B
)

:: Cercle ASCII progressif
if %progress% lss 20 (
    set circle=◜
) else if %progress% lss 40 (
    set circle=◝
) else if %progress% lss 60 (
    set circle=◞
) else if %progress% lss 80 (
    set circle=◟
) else (
    set circle=●
)

echo.
echo.
echo        Chargement !circle!
echo.
echo        [%progress%%%]
echo.

:: Pause animation
ping localhost -n 2 >nul

:: Incrément
set /a progress+=10

if %progress% leq 100 goto loading

cls
color 0A
echo.
echo.
echo        ✔ Chargement terminé !
pause
cls
goto loader

:loader
title main
color 1
chcp 65001
cls
@echo off
echo.
echo                       ╔════════════════════╗
echo                       ║   MENU CONNEXION   ║
echo                       ╠════════════════════╣
echo                       ║  [1] Se connecter  ║
echo                       ║  [2] Quitter       ║
echo                       ╚════════════════════╝®by [Endux] 
set /p choix=votre choix=

if "%choix%"=="1" goto login
if "%choix%"=="2" exit

echo.
echo Choix incorrects
pause
goto loader

:login
cls
title login
echo ╔════════════════════╗
echo ║   MENU CONNEXION   ║
echo ╚════════════════════╝
set /p user=Nom d'utilisateur : 
set /p pass=Mot de passe : 

if "%user%"=="admin" if "%pass%"=="pass" goto success

echo.
echo Identifiants incorrects !
pause
goto login

:success
color 0A
cls
echo.
echo   █████╗  ██████╗ ██████╗ ███████╗ ███████╗ ███████╗
echo  ██╔══██╗██╔════╝██╔════╝ ██╔════╝ ██╔════╝ ██╔════╝
echo  ███████║██║     ██║      █████╗   ███████╗ ███████╗
echo  ██╔══██║██║     ██║      ██╔══╝   ╚════██║ ╚════██║
echo  ██║  ██║╚██████╗╚██████╗ ███████╗ ███████║ ███████║
echo  ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝ ╚══════╝ ╚══════╝
echo.
echo   ██████╗ ██████╗  █████╗ ███╗   ██╗████████╗███████╗██████╗
echo  ██╔════╝ ██╔══██╗██╔══██╗████╗  ██║╚══██╔══╝██╔════╝██╔══██╗
echo  ██║  ███╗██████╔╝███████║██╔██╗ ██║   ██║   █████╗  ██║  ██║
echo  ██║   ██║██╔══██╗██╔══██║██║╚██╗██║   ██║   ██╔══╝  ██║  ██║
echo  ╚██████╔╝██║  ██║██║  ██║██║ ╚████║   ██║   ███████╗██████╔╝
echo   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═════╝
echo.
cls&
pause
goto Menu 

:Menu
cls
title Access
@echo off
echo ╔═══════════════════════════╗> [access granted]_/?//:On
echo ║                           ║> [system online]_/!//:On
echo ║      welcome[%user%]      ║
echo ╚╦═════════════════════════╦╝                           
echo ╔╩═════════════════════════╩╗
echo ║menu de Verification[1]    ║
echo ║menu de Hack[2]            ║
echo ║Exit[3]                    ║
echo ╚═══════════════════════════╝®by [Endu$]_//°):Je ne suis pas responsable de votre mauvaise utilisation(set"IP"==%ip%
)
set /p choice=[votre choix "%user%"]//_

if "%choice%"=="1" goto menuV
if "%choice"=="3" exit
if "%choice%"=="2" goto menuH


:menuV
echo Menu
@echo off
title Menu - Verification PC
chcp 65001 >nul
color 0A
setlocal EnableDelayedExpansion

:menuV
cls
echo.
echo ╔══════════════════════════════════════╗
echo ║        Menu scan_         PC         ║
echo ╠══════════════════════════════════════╣
echo ║ 1. Informations système              ║
echo ║ 2. Vérification CPU / RAM            ║
echo ║ 3. Vérification disque               ║
echo ║ 4. Vérification réseau               ║
echo ║ 5. Vérifier Windows / Activation     ║
echo ║ 6. Vérifier fichiers système (SFC)   ║
echo ║ 7. Température (basique)             ║
echo ║ 8. Test de performance rapide        ║
echo ║ 9. Retour                            ║
echo ║ 0. Quitter                           ║
echo ╚══════════════════════════════════════╝
echo.
set /p choic=Choix :

if "%choic%"=="1" goto info
if "%choic%"=="2" goto cpu
if "%choic%"=="3" goto disk
if "%choic%"=="4" goto net
if "%choic%"=="5" goto win
if "%choic%"=="6" goto sfc
if "%choic%"=="7" goto temp
if "%choic%"=="8" goto perf
if "%choic%"=="9" goto Menu
if "%choic%"=="0" exit
goto menuV

:: ───────────── INFOS SYSTEME ─────────────
:info
cls
systeminfo | more
pause
goto menuV

:: ───────────── CPU / RAM ─────────────
:cpu
cls
echo CPU :
wmic cpu get name,NumberOfCores,MaxClockSpeed
echo.
echo RAM :
wmic memorychip get capacity
pause
goto menuV

:: ───────────── DISQUE ─────────────
:disk
cls
echo Etat des disques :
wmic diskdrive get model,status
echo.
echo Espace disque :
wmic logicaldisk get size,freespace,caption
pause
goto menuV

:: ───────────── RESEAU ─────────────
:net
cls
echo Configuration réseau :
ipconfig
echo.
echo Test connexion (Google) :
ping 8.8.8.8
pause
goto menuV

:: ───────────── WINDOWS ─────────────
:win
cls
slmgr /xpr
pause
goto menuV

:: ───────────── SFC ─────────────
:sfc
cls
echo Analyse des fichiers système...
sfc /scannow
pause
goto menuV

:: ───────────── TEMPERATURE (BASIQUE) ─────────────
:temp
cls
echo Température CPU (si supportée) :
wmic /namespace:\\root\wmi PATH MSAcpi_ThermalZoneTemperature get CurrentTemperature
echo.
echo (Valeur /10 - 273 = °C)
pause
goto menuV

:: ───────────── PERFORMANCE ─────────────
:perf
cls
echo Test CPU...
winsat cpu
echo.
echo Test disque...
winsat disk
pause
goto menuV



:menuH
cls
echo.
echo ╔══════════════════════════════════════╗
echo ║        HackMenu_              pc     ║
echo ╠══════════════════════════════════════╣
echo ║ 1. Nmap-Scan port et réseau          ║
echo ║ 2. Osint                             ║
echo ║ 3. DDos[Not work]                    ║
echo ║ 4. Wireshark-Réseau en temp IRL      ║            
echo ║ 5. Tool Ubuntu                       ║
echo ║ 6. Ubuntu                            ║   
echo ║ 7.Explication                        ║        
echo ║ 9. Retour                            ║
echo ║ 0. Quitter                           ║
echo ╚══════════════════════════════════════╝
echo.
set /p choi=Choix :

if "%choi%"=="1" goto Nmap 
if "%choi%"=="2" goto osint
if "%choi%"=="3" goto DDos
if "%choi%"=="4" goto shark
if "%choi%"=="5" goto Tool
if "%choi%"=="6" goto Ubuntu 
if "%choi%"=="7" goto Explication
if "%choi%"=="9" goto Menu
if "%choi%"=="0" exit

:Tool
@echo off
echo ================================
echo  INSTALLATION TOOLS UBUNTU (WSL)
echo ================================
echo.

REM Vérifier si Ubuntu est installé
wsl -l | find "Ubuntu" >nul
if errorlevel 1 (
    echo [ERREUR] Ubuntu n'est pas installe sur WSL
    pause
    exit
)

echo [OK] Ubuntu detecte
echo.

echo Mise a jour du systeme...
wsl -d ubuntu -- sudo apt update && sudo apt upgrade -y

echo.
echo Installation des outils essentiels...

wsl -d ubuntu -- sudo apt install -y ^
nmap ^
wireshark ^
git ^
curl ^
wget ^
htop ^
net-tools ^
build-essential ^
unzip

echo.
echo Installation Burp Suite Community...
wsl -d ubuntu -- sudo apt install -y burpsuite

wsl -d ubuntu -- sudo apt install -y metasploit-framework

echo.
echo ================================
echo INSTALLATION TERMINEE ✅
echo ================================
pause
goto menuH

:Explication
echo 🛠️ NMAP – À quoi ça sert ?
echo 🔍 En une phrase

echo Nmap sert à voir quelles “portes” sont ouvertes sur un ordinateur ou un réseau.

echo 🧠 Image simple

echo Imagine une maison 🏠 :

echo chaque porte = un port

echo si une porte est ouverte → quelqu’un peut entrer

echo Nmap regarde quelles portes sont ouvertes

echo 📌 Ce que Nmap peut faire (légalement)

echo Voir les appareils connectés à ton Wi‑Fi

echo Vérifier quels services tournent (web, SSH, FTP…)

echo Tester la sécurité de ton propre PC ou d’un lab

    🧪 Exemple simple
echo ╔══════════════════════════════════════╗
echo ║batch                                 ║
echo ║Nmap 192.168.1.1                      ║
echo ╚══════════════════════════════════════╝

echo ➡️ Nmap te dit :

echo Port 80 ouvert → site web

echo Port 22 ouvert → accès SSH

echo ⚠️ Légal uniquement si :

echo C’est ton réseau

echo Tu as l’autorisation

echo Tu t’entraînes sur un lab

echo 📡 WIRESHARK – À quoi ça sert ?
echo 🔍 En une phrase

echo Wireshark sert à voir les données qui circulent sur le réseau.

echo 🧠 Image simple

echo Imagine une route 🚗 :

echo chaque voiture = une donnée

echo Wireshark regarde toutes les voitures qui passent

echo 📌 Ce que Wireshark peut faire

echo Voir quand ton PC parle à Internet

echo Comprendre comment fonctionnent les sites

echo Détecter des problèmes réseau

echo Apprendre comment les données sont protégées

echo 🧪 Exemple simple

echo Tu ouvres Wireshark

echo Tu vas sur un site

echo Tu vois les connexions (HTTPS, DNS, TCP…)

echo ⚠️ Légal uniquement si :

echo C’est ton PC

echo C’est ton réseau

echo Tu as l’autorisation

echo 🧠 Résumé ultra simple
echo Outil	Sert à
echo Nmap	Voir les portes ouvertes
echo Wireshark	Voir les données qui passent
echo 🔥 Pourquoi ils sont importants

echo Utilisés par tous les pros

echo Base de la cybersécurité

echo 100 % légaux s’ils sont bien utilisés


:shark
cls
start "E:\multi tool\System[TOOL]\Wireshark\Wireshark.exe"
goto menuH

:Ubuntu
@echo off
wsl -l | find "Ubuntu" >nul
if errorlevel 1 (
    echo Ubuntu n'est pas installe
) else (
    echo Lancement de Ubuntu GUI...
    wsl -d ubuntu -- startxfce4
)

pause
goto menuH


:Nmap
cls
echo ╔══════════════════════════════════════╗
echo ║       Nmap                           ║
echo ╚══════════════════════════════════════╝ %utilisateur%
echo -1 command
echo -2 ouvrir Nmap
echo.
set /p Nmap=<>Choix=

if "%Nmap%"==" goto nn
if "%Nmap%"=="2" start 
goto menuH

:nn
echo command

:osint
cls
echo ╔══════════════════════════════════════╗
echo ║       Osint tooL(ctrl+click)         ║
echo ╚══════════════════════════════════════╝ %utilisateur%
echo 🔎 ExifData : https://www.exifdata.com/
echo 🕸️ Recherche Inversée Google : https://images.google.com/
echo 🔔Yandex : https://yandex.com/images/
echo 📊 Baidu : https://image.baidu.com/
echo 🏞️ Bing : https://www.bing.com/
echo 🗃️ TinEye : https://tineye.com/
echo 👶🏻 FaceCheck : https://facecheck.id/fr
echo 🤖 LensoAI : https://lenso.ai/en
echo 🧐 CopySeeker : https://copyseeker.net/
echo 📷 Shutterstock : https://www.shutterstock.com/fr/
echo 🖼️ Extension Image : https://chromewebstore.google.com/det...
echo 🤳 PimEyes : https://pimeyes.com/en
echo 🗺️ Overpass-Turbo : https://overpass-turbo.eu/
echo 🌐 Google Earth : https://www.google.com/intl/fr/earth/...
echo ☀️ SunCalc : https://www.suncalc.org/
echo 🛜 InVID & WeVerify : https://chromewebstore.google.com/det...
echo 🛢 Hive AI Detector : https://chromewebstore.google.com/det...
echo 🤵Remini : https://remini.ai/
echo 🛠️ Gimp : https://www.gimp.org/downloads/
echo 🧱 Remove Background : https://www.remove.bg/fr
echo 🕵️ Recherche Avancée X : https://x.com/search-advanced?lang=fr
echo 🎮Recherche avec Speudo :https://whatsmyname.app
pause
goto menuH

:DDos 
echo Comming song
pause
goto menuH  