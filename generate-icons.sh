#!/bin/bash

# Script para Gerar Ícones PNG (Linux/Mac)
# Requer: ImageMagick instalado (apt-get install imagemagick)

echo "🎨 Gerando ícones PNG para DRS Studio PWA..."

if ! command -v convert &> /dev/null
then
    echo "❌ ImageMagick não encontrado!"
    echo "   Instale com: sudo apt-get install imagemagick"
    echo ""
    echo "Alternativas:"
    echo "   1. Use: https://realfavicongenerator.net/"
    echo "   2. Abra icon-192.html e icon-512.html no navegador"
    echo "   3. Tire screenshots de 192x192 e 512x512"
    exit 1
fi

# Converter SVG para PNG
convert -background none icon-192.svg icon-192.png
convert -background none icon-512.svg icon-512.png

echo "✅ Ícones gerados com sucesso!"
echo "   - icon-192.png"
echo "   - icon-512.png"
echo ""
echo "🚀 Próximo passo: git add . && git commit -m 'PWA pronto'"
