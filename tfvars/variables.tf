variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "zone_id" {
  type    = string
  default = "Z09875173300UX2P21V1"
}


variable "domain_name" {
  type    = string
  default = "manohar.fun"
}

variable "instance_names" {
  default = ["mysql", "backend", "frontend"]
}

variable "instance_type" {
  default = ["t3.small", "t3.micro", "t3.micro"]
}

variable "name" {
  default = "tfvars"
}