variable "name" {
    description =  "Nom des ressources"
    type = string
    default = "error"
}

variable vms {
    description = "Set VM"
    type = map
    default = {
    vm1 = "vm1",
    vm2 = "vm2"}
}