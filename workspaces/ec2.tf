resource "aws_instance" "workspace" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = lookup(var.instance_type, terraform.workspace)
    vpc_security_group_ids = ["sg-00b3297dd52c5159b"]
    tags = {
      Name="workspace-${terraform.workspace}"
    }
  
}