#!/bin/bash

show_help() {
    echo "Uso: $0 <nombre_del_directorio> <-htb | -thm>"
    echo "  -h       Mostrar este mensaje de ayuda"
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

case "$1" in
    -htb) ruta="$HOME/Documents/HTB/" ;; 
    -thm) ruta="$HOME/Documents/THM/" ;;
    *) echo "Parámetro inválido: usa -htb o -thm"; exit 1 ;;
esac

[ ! -d "$ruta" ] && mkdir -p "$ruta"

ruta_principal="$ruta$dirnombre"
mkdir -p "$ruta_principal"

mkdir -p "$ruta_principal"/{scan,enumeration/{web,smb,ftp},exploit,evidence/screenshots,scripts,tools}

if command -v tree &>/dev/null; then
    tree "$ruta_principal"
else
    echo "Directorio creado en: $ruta_principal"
    echo "Instala 'tree' para ver la estructura: sudo apt install tree"
fi