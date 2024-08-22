variable client_id {}
variable client_secret {}
variable tenant_id {}

variable resource_group {
  default = "k8s_state_storage_r_g"
}

variable environment {
  default = "dev"
}

variable location {
  default = "westeurope"
}
variable "storage_account" {
  default = "tf_state_storage"
}
variable "storage_container" {
  default = "tf_state_container"
}