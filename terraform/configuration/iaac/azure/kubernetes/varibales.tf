variable client_id {}
variable client_secret {}
variable ssh_public_key {}

variable environment {
  default = "dev"
}

variable location {
  default = "westeurope"
}

variable node_count {
  default = 3
}

variable dns_prefix {
  default = "k8s"
}

variable cluster_name {
  default = "k8s"
}

variable resource_group {
  default = "kubernetes"
}

variable "vm_size" {
  default = "standard_b2ms"
}
variable "storage_account" {
  default = "tf-state-storage"
}