# Práctica Terraform + Ansible – Despliegue de Moodle

En esta práctica se realiza el despliegue de una infraestructura en aws utilizando terraform y la configuración de los servicios mediante ansible.


Esto se hace con el objetivo de desplegar un enorno de Moddle en dos máquinas: backend y frontend

La estructura del proyecto es la siguiente:

```
practica-moddle-terraform-ansible/
│
├── imagenes/
├── scripts-terraform/
│   ├── .terraform/
│   ├── .terraform.lock.hcl
│   ├── instances.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── security_groups.tf
│   └── variables.tf
│
├── scripts-ansible/
│   ├── inventario
│   ├── variables.yml
│   └── playbooks/
│       ├── backend.yml
│       └── frontend.yml
│
├── .gitignore
└── README.md
```

## Terraform
## scripts-terraform/


En este directorio se encuentran todos los archivos necesarios para el despliegue de la infraestructura con Terraform.

Lo que contiene es:

### provider.tf
Define el proveedor utilizado (AWS) y la región.

### variables.tf
Contiene la definición de las variables usadas en la infraestructura.

### instances.tf
Define las instancias EC2 que se van a crear (frontend y backend).

### security_groups.tf
Configura los grupos de seguridad necesarios para permitir:ssh,mysql,etc

### outputs.tf
Muestra las IP públicas y privadas de las instancias una vez finalizado el despliegue.

El resultado es
![se sube](imagenes/apply.png)


## Ansible

## scripts-ansible/
En este directorio se encuentra la configuración necesaria para automatizar la instalación y configuración de los servicios.

### inventario
Contiene las IP públicas de las instancias frontend y backend generadas por Terraform.

### variables.yml
Define las variables utilizadas por los playbooks (base de datos, rutas, credenciales, etc.).

#### playbooks/backend.yml
- Configura la máquina backend:

- Instalación de MySQL

- Creación de la base de datos de Moodle

- Creación del usuario y permisos

- Configuración para permitir conexiones remotas

#### playbooks/frontend.yml
- Configura la máquina frontend:

- Instalación de Apache y PHP

- Configuración de PHP para Moodle

- Descarga e instalación de Moodle

- Instalación de Moodle mediante CLI

- Ajuste de permisos y reinicio de Apache

La ejecución es la siguiente

#### Backend
![se sube](imagenes/playbook-backend.png)
#### Frontend
![se sube](imagenes/playbook-front.png)

#### web
![se sube](imagenes/web-moddle.png)
#### web
![se sube](imagenes/entrada.png)
