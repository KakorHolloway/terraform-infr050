# Openstack Module to add a vm to a existing network

Mise en place d'un module pour la création d'un module

## Usage

```hcl
module "openstack-vm" {
    source = "path of your module"
    network_id = "<network id>"
    subnet_id = "<subnet id>
    name = "Nom de la vm"
    security_group_name = "Nom du security group"
}
```
