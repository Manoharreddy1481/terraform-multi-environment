resource "aws_instance" "terraform" {
    for_each = var.instance_names
    ami = var.ami_id
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.for_each.id]
    tags = {
        Name=each.key
    }
  
}

resource "aws_security_group" "for_each" {
    name = "for-each"
    description="Allow all ports"

    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "for-each"
    }
  
}