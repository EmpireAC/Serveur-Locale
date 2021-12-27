:: Empire AC - Serveur-Locale
:: Par holia-dev

:: 2021 Holia
:: MIT Licence

@echo off
title Serveur-Locale - Empire AC

echo [%TIME%] [LOG] Launch Serveur-Locale
echo [%TIME%] [LOG] Search server.jar

if exist server.jar (
    goto :ok
) else (
    echo [%TIME%] [ERROR] server.jar not found...
    echo [%TIME%] [ERROR] Serveur-Locale a besoin d'un fichier serveur minecraft en JAR, nommé server.jar
    echo [%TIME%] [LOG] Exit with code 0.
    exit
)

:ok
echo [%TIME%] [LOG] server.jar has found !
set /p eula_accept=Do you accept the Mojang EULA ? [yes,no] : 
if %eula_accept% == "yes" (
    echo eula=true > eula.txt
    echo [%TIME%] [LOG] Mojang EULA accepted !
    echo [%TIME%] [LOG] launch server.jar...
    java -jar server.jar
)
else %eula_accept% == "no" (
    echo [%TIME%] [ERROR] You decline the Mojang EULA, server can't load.
    echo [%TIME%] [LOG] Exit with code 1.
    exit
)