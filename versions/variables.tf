variable "tags" {
  type = map(string)
}

variable "hmpps-delius-network-terraform" {
  type        = map(string)
  description = "Parameter key and value"
}

variable "delius-network-hmpps-env-configs" {
  type        = map(string)
  description = "Parameter key and value"
}

variable "hmpps-delius-core-terraform" {
  type        = map(string)
  description = "Parameter key and value"
}

variable "delius-core-hmpps-env-configs" {
  type        = map(string)
  description = "Parameter key and value"
}
