#terraform import openstack_identity_role_v3.reader b5be49c6a42e4244bca3bfafadf3e32b
data "openstack_identity_role_v3" "reader" {
  name = "reader"
}

data "openstack_identity_role_v3" "admin" {
  name = "admin"
}