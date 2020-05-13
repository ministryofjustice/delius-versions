variable "tags" {
  type = map(string)
}

variable "hmpps-delius-network-terraform" {
  type        = map(string)
  description = "Parameter key and value"
}

variable "hmpps-delius-core-terraform" {
  type        = map(string)
  description = "Parameter key and value"
}
