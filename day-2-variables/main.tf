
variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}

variable "ami_id" {
  description = "AWS Ec2 ami Id"
  type = string
  default = "ami-0fc5d935ebf8bc3bc"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = var.ami_id
  instance_type = var.instance_type
}

output "public_ip" {
  description = "public IP of EC2 instance"
  value = aws_instance.example.public_ip
}