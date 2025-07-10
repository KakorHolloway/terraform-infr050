# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}
provider "openstack" {
  tenant_name =  var.project_name
  tenant_id =  var.project_id
  password = "B4teau123!"
  user_name = "admin"
  auth_url = "http://172.28.198.78/identity"
  region = "RegionOne"
  user_domain_name = "Default"
  endpoint_type = "public"
}