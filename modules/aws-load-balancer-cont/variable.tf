variable "project_name" {
  description = "The name of the project, used for naming resources."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default     = {}
}

variable "oidc" {
  description = "The ARN of the OIDC provider for the EKS cluster."
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}