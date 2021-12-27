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
java -jar server.jar
