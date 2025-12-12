░█▀▀░▀█▀░█▀▀░▀█▀░█▀▀░█▄█░█▀█░░░█░█░█▀█░█▀▀░█▀▄░█▀█░█▀█░▀█▀
░▀▀█░░█░░▀▀█░░█░░█▀▀░█░█░█▀█░░░▀▄▀░█▀█░█░█░█▀▄░█▀█░█░█░░█░
░▀▀▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀░▀░░░░▀░░▀░▀░▀▀▀░▀░▀░▀░▀░▀░▀░░▀░

**DESCRIPCION**
Este proyecto levanta una infraestructura completa usando **Vagrant** y **Ansible**. Se crean 5 maquinas virtuales con Debian Bookworm (1024 MB cada una) para cada uno de los servicios necesarios:

* **Servidor Web (www.patitohosting.licic):** Apache2 con SSL, PHP, WordPress, integrado con LDAP.
* **Servidor de BD (db.patitohosting.licic):** MariaDB, DB para WordPress, con configuracion segura, SNMP.
* **Servidor DNS (ns.patitohosting.licic):** dnsmasq con la zona patitohosting.licic y registros www, db, email, ns.
* **Servidor Correo (email.patitohosting.licic):** Postfix/Dovecot, IMAPS/POP3S/SMTP con LDAP, SpamAssassin, ClamAV, SNMP, SSL.
* **Servidor LDAP (ldap.patitohosting.licic):** Samba4 AD DC, usuarios/grupos creados, integracion LDAP con WordPress y correo.

**ESTRUCTURA**
* `Vagrantfile`: levanta las 5 maquinas virtuales con las IPs y sus hostnames correspondientes.
* `inventory.ini`: inventario ansible con grupos y credenciales.
* `install.sh`: instala ansible y dependencias en la maquina principal.
* `main.sh`: ejecuta los playbooks en orden (LDAP, DNS, BD, Correo, Web).
* `roles/`: contiene los playbooks de cada servidor.
.
├── install.sh
├── inventory.ini
├── main.sh
├── REAME.md
├── roles
│   ├── playbookBD.yml
│   ├── playbookCorreo.yml
│   ├── playbookDNS.yml
│   ├── playbookLDAP.yml
│   └── playbookWeb.yml
└── Vagrantfile

**USO**
1. Clonar este repositorio y entrar al directorio.
2. Ejecutar install.sh para instalar ansible y herramientas necesarias.
3. Levantar las VMs con vagrant up.
4. Una vez que vagrant termine, correr ./main.sh para provisionar todos los servicios con ansible.

**HERRAMIENTAS USADAS**
Virtualbox: el hipervisor donde se ejecutan y crean las maquinas virtuales.
Vagrant: el intermediario, el que le da la orden a Virtualbox de crear las maquinas virtuales.
Ansible: el proveedor y el que configura las maquinas virtuales creadas.

**LICENCIA**
Uso de la licencia GPLv2 (Gnu General Public License Version 2)

**CREDITOS**
Creado por los estudiantes Ander Saul Pegueros Izquierdo y Eduardo Ruiz Ramirez para la experiencia educativa de Administracion Avanzada de Servidores.
Todos los derechos reservados.
