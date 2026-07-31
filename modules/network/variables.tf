variable "cidr_block" {
  type        = string
  description = "Network cidr block for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name for the VPC"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to AWS resources"
}
