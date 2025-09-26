data "openstack_identity_user_v3" "admin" {
  name = "admin"
}

resource "openstack_identity_user_v3" "ipi-user-1" {
  default_project_id = openstack_identity_project_v3.ipi.id
  name               = "user-01"
  description        = "A user"

  password = "password123"

  ignore_change_password_upon_first_use = true

  multi_factor_auth_enabled = true

  multi_factor_auth_rule {
    rule = ["password", "totp"]
  }

  multi_factor_auth_rule {
    rule = ["password"]
  }

  extra = {
    email = "ipi@ipi.com"
  }
}