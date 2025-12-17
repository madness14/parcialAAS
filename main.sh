#!/usr/bin/env bash

########################
# script main para iniciar todas las maquinas virtuales. 
# recomendado primero instalar el script de instalacion
# despues ejecutar este 
#   ./main.sh
########################

set -euo pipefail

# borrar todas anteriores
vagrant destroy -f 2>/dev/null

# inicia el dns
vagrant up dns >/dev/null && echo "[*] Servidor DNS iniciado correctamente" || {
    echo "[ ] Error al intentar iniciar el servidor DNS"
    exit 1
}

# inicia la bd
vagrant up db >/dev/null && echo "[*] Servidor de Base de datos iniciado correctamente" || {
    echo "[ ] Error al intentar iniciar el servidor de Base de datos"
    exit 1
}

# inicia ldap
vagrant up ldap >/dev/null && echo "[*] Servidor LDAP iniciado correctamente" || {
    echo "[ ] Error al intentar iniciar el servidor LDAP"
    exit 1
}

# inicia email
vagrant up email >/dev/null && echo "[*] Servidor de correo iniciado correctamente" || {
    echo "[ ] Error al intentar iniciar el servidor de correo"
    exit 1
}

echo "[*] Todas las maquinas virtuales iniciadas correctamente"
