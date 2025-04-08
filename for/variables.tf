variable "instance_names" {
    type = map
    default = {
        mysql="t3.small"
        backend="t3.micro"
        frontend="t3.micro"
    }
  
}

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f" 
}

variable "zone_id" {
    type = string
    default = "Z09875173300UX2P21V1"
}


variable "domain_name" {
    type = string
    default = "manohar.fun"
}