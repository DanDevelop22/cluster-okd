# OKD Vagrant Cluster

Este repositorio contiene los scripts necesarios para preparar un entorno Ubuntu (o WSL en Windows) y levantar un clúster de OKD (OpenShift Origin) utilizando Vagrant y VirtualBox. Todo el proceso está automatizado usando Ansible.

---

## 🧰 Requisitos

### Para Ubuntu (Linux)

- Ubuntu 22.04 o superior
- `sudo` habilitado
- Acceso a internet

### Para Windows

- Windows 10 o 11
- [WSL2](https://learn.microsoft.com/es-es/windows/wsl/) instalado con **Ubuntu**
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://developer.hashicorp.com/vagrant/downloads)
- El proyecto debe estar ubicado en una carpeta accesible desde ambos entornos (como `C:/Users/tu-usuario/okd-vagrant-cluster`)

---

## 🚀 Instrucciones

### ✅ Opción 1: Uso en Ubuntu

1. Clona el repositorio:

   git clone https://github.com/DanDevelop22/cluster-okd.git
   cd okd-vagrant-cluster

2. Da permisos de ejecución al script:

    chmod +x scripts/run-all.sh

3. Ejecuta el script:
    ./scripts/run-all.sh

### ✅ Opción 2: Uso en Ubuntu

1. Instala VirtualBox y Vagrant desde Windows.

2. Instala WSL2 con Ubuntu(En PowerShell como administrador):

    wsl --install

3. Abre Ubuntu (WSL), y trabaja desde una carpeta compartida:

    cd /mnt/c/Users/tu-usuario
    git clone https://github.com/tu-user/okd-vagrant-cluster.git
    cd okd-vagrant-cluster

4. Instala Ansible dentro de WSL:

    sudo apt update
    sudo apt install ansible -y

5. Ejecuta el proceso:
    
   chmod +x scripts/run-all.sh
    ./scripts/run-all.sh 

⚠️ Importante: El comando vagrant up se ejecutará desde WSL pero usará VirtualBox de Windows, por eso debes estar en una ruta como /mnt/c/....

---