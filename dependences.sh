#!/bin/bash

# Función para verificar si pip está instalado
verificar_pip() {
    echo "Checking if pip is installed..."
    if command -v pip &>/dev/null; then
        echo "pip is already installed."
    else
        echo "pip is not installed. Installing pip..."
        python3 -m ensurepip --upgrade
        if [ $? -eq 0 ]; then
            echo "pip has been installed successfully."
        else
            echo "Error installing pip."
            exit 1
        fi
    fi
}

instalar_qrcode() {
    echo "Installing QRcode..."
    pip install qrcode --break-system-packages
    if [ $? -eq 0 ]; then
        echo "¡QRcode has been installed successfully!"
    else
        echo "Error installing qrcode"
        exit 1
    fi
}

verificar_pip
instalar_qrcode
