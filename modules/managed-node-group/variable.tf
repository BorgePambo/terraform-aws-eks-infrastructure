variable "project_name" {
  type        = string
  description = "Project name for the VPC"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to AWS resources"
}

variable "cluster_name" {
  type        = string
  description = "EKS Cluster name"
}

variable "subnet_private_1a" {
  type        = string
  description = "Private subnet ID for availability zone 1a"
}

variable "subnet_private_1b" {
  type        = string
  description = "Private subnet ID for availability zone 1b"
}