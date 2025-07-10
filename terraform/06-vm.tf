resource "openstack_networking_port_v2" "ipi-port" {
  name           = "port-ipi"
  network_id     = openstack_networking_network_v2.ipi-net.id
  admin_state_up = "true"
  tenant_id = openstack_identity_project_v3.ipi.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.ipi-sub.id
  }
}

resource "openstack_compute_instance_v2" "ipi-vm" {
  name            = "vm-ipi"
  image_id        = "57a7fb99-9c31-4135-ba4d-7f6e966dba9c"
  flavor_id       = "c1"
  security_groups = ["default"]


  metadata = {
    this = "that"
  }

  network {
    port = openstack_networking_port_v2.ipi-port.id
  }
}