variable "subcomponent" {
  type        = string
  description = "Subcomponent [network|delius-core|spg]"
}

variable "item_name" {
  type        = string
  description = "Name of Source Code Repository || Artefact"
}

variable "item_type" {
  type        = string
  description = "Type  - Name of Source Code Repository || Artefact [repo|artefact|ami]"
}

variable "env_version" {
  type        = map(string)
  description = "Map of Environment names with Source Code Repository || Artefact version [tag or branch name]"
}

variable "tags" {
  type        = map(string)
  description = "Default tags to apply to the ssm parameter resource."
}
