

variable "project_name" {
  type = string
  description = "Project name for the VPC"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to AWS resources"
}

variable "public_subnet_1a"{
  type = string
  description = "subnet to create eks cluster in AZ 1a"
}

variable "public_subnet_1b"{
  type = string
  description = "subnet to create eks cluster in AZ 1b"
}