@echo off
REM Script para Gerar Ícones PNG (Windows)
REM Requer: ImageMagick instalado (https://imagemagick.org/script/download.php)

echo Gerando icones PNG para DRS Studio PWA...

where magick >nul 2>nul
if %errorlevel% neq 0 (
    echo ImageMagick nao encontrado!
    echo.
    echo Instale em: https://imagemagick.org/script/download.php
    echo.
    echo Alternativas:
    echo   1. Use: https://realfavicongenerator.net/
    echo   2. Abra icon-192.html e icon-512.html no navegador
    echo   3. Tire screenshots de 192x192 e 512x512
    pause
    exit /b 1
)

magick convert -background none icon-192.svg icon-192.png
magick convert -background none icon-512.svg icon-512.png

echo Icones gerados com sucesso!
echo   - icon-192.png
echo   - icon-512.png
echo.
echo Proximo passo: git add . ^&^& git commit -m "PWA pronto"
pause
