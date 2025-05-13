#!/bin/bash

echo "🔧 Ejecutando Ansible para preparar el entorno..."
ansible-playbook setup-host.yml || exit 1

echo "📦 Ejecutando Ansible para configurar el Vagrantfile y recursos..."
ansible-playbook install-okd-vagrant.yml || exit 1

# echo "🚀 Ejecutando vagrant up desde Windows..."
# powershell.exe -ExecutionPolicy Bypass -File /mnt/c/Users/{TuUsuario}/okd-vagrant-cluster/run-vagrant.ps1