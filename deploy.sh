#!/bin/bash
# Deploy manual del frontend Flutter — córrelo desde tu máquina
# Uso: bash deploy.sh

VPS="root@23.94.202.152"

echo ">>> Compilando Flutter web..."
flutter build web --release

echo ">>> Subiendo al VPS..."
scp -r build/web/* $VPS:/var/www/rentiva/frontend/

echo ">>> Frontend desplegado en http://23.94.202.152:8080"
