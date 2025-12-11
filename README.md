░█▀▀░▀█▀░█▀▀░▀█▀░█▀▀░█▄█░█▀█░░░█░█░█▀█░█▀▀░█▀▄░█▀█░█▀█░▀█▀
░▀▀█░░█░░▀▀█░░█░░█▀▀░█░█░█▀█░░░▀▄▀░█▀█░█░█░█▀▄░█▀█░█░█░░█░
░▀▀▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀░▀░░░░▀░░▀░▀░▀▀▀░▀░▀░▀░▀░▀░▀░░▀░

Este proyecto se trata de un sistema virtualizado implementado usando Vagrant. Incluye un servicio web (Apache2 v2.4.66), base de datos (MariaDB v12.1.2), dns (dnsmasq v2.91), correo (Postfix y Dovecot) y ldap (Active Directory.). Se utiliza a Ansible como proveedor, el cual configura automaticamente las maquinas virtuales creadas con Vagrant.

Para ejecutarlo, debes ejecutar el main del proyecto. Asegurate de haber leido la documentacion del proyecto, asi como tambien de haber instalado todas las dependencias y herramientas necesarias para el funcionamiento. De lo contrario, podrias tener errores al momento de ejecutarlo o al momento de que se creen las maquinas virtuales.

Virtualbox: el hipervisor donde se ejecutan y crean las maquinas virtuales.
Vagrant: el intermediario, el que le da la orden a Virtualbox de crear las maquinas virtuales.
Ansible: el proveedor y el que configura las maquinas virtuales creadas.

Uso de la licencia GPLv2 (Gnu General Public License Version 2)

Creado por los estudiantes Ander Saul Pegueros Izquierdo y Eduardo Ruiz Ramirez para la experiencia educativa de Administracion Avanzada de Servidores.
Todos los derechos reservados.
