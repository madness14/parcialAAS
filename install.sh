#!/usr/bin/env bash 
              
_ayuda() {
    echo "$(basename "$0"): este script instala de forma automatica todas las herramientas que necesita este proyecto. "
    echo "Se sugiere ejecutar este programa con permisos de superusuario para evitar problemas durante la instalacion"
    echo
    echo "uso:"
    echo "  ./install.sh"
    echo "  sudo bash install.sh"
}

_echoError() {
    # $1 -> mensaje de error
    echo "$1" >&2
}

reportarError() {
    # $1 -> error reportado
    _echoError "$1" && _ayuda && exit 1
}

instalarDebian() {
    # $1 -> paquete de debian a instalar automaticamente
    { apt install "$1" -y && echo "[*] paquete $1 instalado exitosamente" ; } || echo "[ ] no se pudo instalar el paquete $1"
}

instalarGithub() {
    echo    
}

test "$1" = "--help" && _ayuda && exit 0

apt update
instalarDebian "apache2"
instalarDebian "mariadb-server"
