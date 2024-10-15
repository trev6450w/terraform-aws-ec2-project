variable "region" {
  type        = string
  description = "The AWS region to deploy resources"
}

variable "aws_access_key" {
  type        = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
}

variable "domain_name" {
  type        = string
  description = "The domain name for Route 53 configuration"
}

variable "instance_type" {
  type        = string
  description = "The EC2 instance type"
}

variable "os_name" {
  type        = string
  description = "The name of the operating system (e.g., 'ubuntu', 'amazon-linux-2')"
  default     = "ubuntu"
}

variable "os_version" {
  type        = string
  description = "The version of the operating system"
  default     = "20.04"
}