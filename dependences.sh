#!/bin/bash

verificar_pip() {
    echo "Checking if pip is installed"
    if command -v pip &>/dev/null; then
        echo "pip is installed"
    else
        echo "Installing pip..."
        python3 -m ensurepip --upgrade
        if [ $? -eq 0 ]; then
            echo "pip has been installed successfully."
        else
            echo "Error"
            exit 1
        fi
    fi
}

instalar_customtkinter() {
    echo "Installing CustomTkinter..."
    pip install customtkinter
    if [ $? -eq 0 ]; then
        echo "¡CustomTkinter has been installed successfully!"
    else
        echo "Error"
        exit 1
    fi
}

verificar_tkinter() {
    echo "Checking if tkinter is installed..."
    python3 -c "import tkinter" 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "tkinter is already installed."
    else
        echo "tkinter is not installed."
        echo "If you're on Linux, install it with: sudo apt-get install python3-tk"
        exit 1
    fi
}

verificar_pip
verificar_tkinter
instalar_customtkinter
