variable "instance_names" {
    type = list(string)
    default = [ "frontend","backend","mysql" ] 
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