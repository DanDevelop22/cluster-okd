#!/bin/bash
set -e

echo "[*] Ejecutando playbook de preparación del host..."
ansible-playbook setup-host.yml

echo "[*] Levantando Vagrant y desplegando OKD..."
ansible-playbook install-okd-vagrant.yml