variable "network_id" {
    description = "Network ID to get"
    type = string
}

variable "subnet_id" {
    description = "Subnet ID to get"
    type = string
}

variable "name" {
    description = "Name of the VM"
    type = string
}

variable "security_group_name" {
    description = "Name of the SG"
    type = string
}


variable "project_name" {
    description = "Name of the Project"
    type = string
}
variable "project_id" {
    description = "Id of the project"
    type = string
}