resource "openstack_networking_network_v2" "ipi-net" {
  name           = "network-ipi"
  admin_state_up = "true"
  tenant_id = openstack_identity_project_v3.ipi.id
}

resource "openstack_networking_subnet_v2" "ipi-sub" {
  name = "subnet-ipi"
  network_id = openstack_networking_network_v2.ipi-net.id
  cidr       = "10.0.0.0/24"
}