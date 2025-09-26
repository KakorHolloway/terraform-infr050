resource "openstack_identity_role_assignment_v3" "ipi-user-1-as" {
  user_id    = openstack_identity_user_v3.ipi-user-1.id
  project_id = openstack_identity_project_v3.ipi.id
  role_id    = data.openstack_identity_role_v3.reader.id
}

resource "openstack_identity_role_assignment_v3" "admin-as" {
  user_id    = data.openstack_identity_user_v3.admin.id
  project_id = openstack_identity_project_v3.ipi.id
  role_id    = data.openstack_identity_role_v3.admin.id
}