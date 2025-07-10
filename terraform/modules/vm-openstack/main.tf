resource "openstack_networking_port_v2" "ipi-port" {
  name           = "port-ipi-${var.name}"
  network_id     = var.network_id
  admin_state_up = "true"
  #tenant_id = openstack_identity_project_v3.ipi.id
  fixed_ip {
    subnet_id = var.subnet_id
  }
}

resource "openstack_compute_instance_v2" "ipi-vm" {
  name            = "${var.name}"
  image_id        = "57a7fb99-9c31-4135-ba4d-7f6e966dba9c"
  flavor_id       = "c1"
  security_groups = ["default", var.security_group_name]


  metadata = {
    this = "that"
  }

  network {
    port = openstack_networking_port_v2.ipi-port.id
  }
}