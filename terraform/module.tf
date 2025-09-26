module "vm-openstack" {
    source = "./modules/vm-openstack"
    network_id = openstack_networking_network_v2.ipi-net.id
    subnet_id = openstack_networking_subnet_v2.ipi-sub.id
    name = "vm1"
    security_group_name = openstack_networking_secgroup_v2.ipi-sec.name
    project_name = openstack_identity_project_v3.ipi.name
    project_id = openstack_identity_project_v3.ipi.id
}

module "vm-openstack2" {
    source = "./modules/vm-openstack"
    network_id = openstack_networking_network_v2.ipi-net.id
    subnet_id = openstack_networking_subnet_v2.ipi-sub.id
    name = "vm2"
    security_group_name = openstack_networking_secgroup_v2.ipi-sec.name
    project_name = openstack_identity_project_v3.ipi.name
    project_id = openstack_identity_project_v3.ipi.id
}