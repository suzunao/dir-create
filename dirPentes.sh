#!/bin/bash

show_help() {
    echo "Uso: $0 <-htb | -thm> <Machine_name>"
    echo "  -h       ayuda"
    echo "  -htb     Crear los directorios en la ruta HTB (/\$home/Documents/HTB/)"
    echo "  -thm     Crear los directorios en la ruta THM (/\$home/Documents/THM/)"
}

if [ "$1" == "-h" ]; then
    show_help
    exit 0
fi

if [ $# -ne 2 ]; then
    echo "U"
    exit 1
fi

dirnombre=$2

# obciones de ruta
case "$1" in
    -htb) ruta="$HOME/Documents/HTB/"
    [ ! -d "$ruta" ] && mkdir -p "$ruta"
    ;; 
    -thm) ruta="$HOME/Documents/THM/" 
    [ ! -d "$ruta" ] && mkdir -p "$ruta"
    ;;
    *) echo "Parámetro inválido: usa -htb o -thm"; exit 1 ;;
esac

# para Hack the box & TryHackMe
mkdir -p "$ruta"/{scan,enumeration/{web,smb,ftp},exploit,evidence/screenshots,scripts,tools}

# verifica si esta instalado tree
if command -v tree &>/dev/null; then
    tree "$ruta"
else
    echo "Directorio creado en: $ruta"
    echo "Instala 'tree' para ver la estructura: sudo apt install tree"
fi