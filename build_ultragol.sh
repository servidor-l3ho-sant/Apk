#!/bin/bash

echo "🚀 ULTRAGOL - Build Script by L3HO"
echo "=================================="

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

echo
echo "📋 Verificando estructura del proyecto..."

# Check if we have the necessary files
if [ ! -f "AndroidManifest.xml" ]; then
    print_error "AndroidManifest.xml no encontrado"
    exit 1
fi

print_status "AndroidManifest.xml encontrado"

if [ ! -d "res" ]; then
    print_error "Carpeta res/ no encontrada"
    exit 1
fi

print_status "Carpeta de recursos encontrada"

if [ ! -d "smali" ]; then
    print_error "Carpeta smali/ no encontrada"
    exit 1
fi

print_status "Código smali encontrado"

echo
echo "🔨 Compilando ULTRAGOL APK..."

# Build APK using apktool
./apktool b . -o ULTRAGOL_L3HO.apk --force-all

if [ $? -eq 0 ]; then
    print_status "✅ ¡ULTRAGOL compilado exitosamente!"
    print_status "📱 APK generado: ULTRAGOL_L3HO.apk"
    
    # Check file size
    if [ -f "ULTRAGOL_L3HO.apk" ]; then
        size=$(du -h ULTRAGOL_L3HO.apk | cut -f1)
        print_status "📦 Tamaño del APK: $size"
    fi
    
    echo
    echo "🎯 Próximos pasos:"
    echo "   1. Para firmar el APK (necesario para instalar):"
    echo "      keytool -genkey -v -keystore ultragol.keystore -alias ultragol -keyalg RSA -keysize 2048 -validity 10000"
    echo "      jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore ultragol.keystore ULTRAGOL_L3HO.apk ultragol"
    echo "   2. Instalar en dispositivo Android"
    echo
else
    print_error "❌ Error compilando ULTRAGOL"
    print_warning "Revisa los errores arriba para solucionarlos"
    exit 1
fi