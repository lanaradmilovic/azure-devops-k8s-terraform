variable client_id {}
variable client_secret {}
variable tenant_id {}
variable subscription_id {}

variable resource_group {
  default = "k8s_state_storage_r_g"
}

variable environment {
  default = "dev"
}

variable location {
  default = "northeurope"
}
variable "storage_account" {
  default = "tfstatestoragelanarad"
}
variable "storage_container" {
  default = "tfstatecontainerlanarad"
}