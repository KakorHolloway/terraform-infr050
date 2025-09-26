resource "openstack_networking_network_v2" "ipi-net" {
  name           = "network-ipi"
  admin_state_up = "true"
  tenant_id = openstack_identity_project_v3.ipi.id
}

resource "openstack_networking_subnet_v2" "ipi-sub" {
  name = "subnet-ipi"
  network_id = openstack_networking_network_v2.ipi-net.id
  cidr       = "10.0.0.0/24"
  # je veux être sur que les droits de mon utilisateur ne soient caduc qu'après la suppression des ports et vm à cause du module (limitation de legacy)
  depends_on = [ openstack_identity_role_assignment_v3.admin-as ]
}

resource "openstack_networking_secgroup_v2" "ipi-sec" {
  name        = "ipi-sec"
  description = "My neutron security group"
  tenant_id = openstack_identity_project_v3.ipi.id
}

resource "openstack_networking_secgroup_rule_v2" "ipi-sec-22" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.ipi-sec.id
}

resource "openstack_networking_secgroup_rule_v2" "ipi-sec-80" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.ipi-sec.id
}

resource "openstack_networking_secgroup_rule_v2" "ipi-sec-443" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.ipi-sec.id
}