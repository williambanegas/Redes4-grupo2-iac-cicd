# Redes IV - Proyecto Grupo 2: IaC y CI/CD para Redes

Gestión automatizada de un router **Cisco Catalyst C8200L** y un switch **Cisco Catalyst C9200L** aplicando Infraestructura como Código (Ansible, Jinja2, Terraform) y flujo GitOps en GitHub.

## Estructura del Repositorio
- `backups/`: Respaldo original (`show running-config`) de ambos equipos.
- `inventory/`: Inventario de dispositivos de laboratorio.
- `group_vars/`: Variables YAML (VLANs, interfaces, OSPF, hostnames).
- `templates/`: Plantillas Jinja2 para IOS XE.
- `playbooks/`: Playbooks de respaldo, despliegue y renderizado local.
- `terraform/`: Configuración de Terraform con proveedor `CiscoDevNet/iosxe` (RESTCONF).
- `.github/workflows/`: Pipeline CI/CD (`yamllint`, `ansible-lint` y aprobación manual).

## Uso rápido en laboratorio
1. Exportar credenciales como variables de entorno:
   ```bash
   export CISCO_USER="usuario"
   export CISCO_PASS="password"
   export CISCO_ENABLE_PASS="enable_password"
