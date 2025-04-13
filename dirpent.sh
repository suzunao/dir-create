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

if [ $# -ne 2 ] || [ -z "$2" ]; then
    show_help
    exit 1
fi

dirnombre=$2

# obciones de ruta
case "$1" in
    -htb) ruta="$HOME/Documents/HTB/$dirnombre" ;; 
    -thm) ruta="$HOME/Documents/THM/$dirnombre" ;;
    *) 
    echo "Parámetro inválido: usa -htb o -thm" 
    show_help
    exit 1 ;;
esac

# para Hack the box & TryHackMe
mkdir -p "$ruta"/{enumeration/{web,smb,ftp},scan,exploit,evidence/{screenshots,credentials,flags},scripts,notes,tools}


# verifica si esta instalado tree
if command -v tree &>/dev/null; then
    tree "$ruta"
else
    echo "Estructura de directorios creada en: $ruta"
    echo "Instala 'tree' para ver la estructura visualmente con: sudo apt-get install tree"
fi