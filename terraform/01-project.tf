resource "openstack_identity_project_v3" "ipi" {
  name        = "terraform"
  description = "Demo Terraform"
}