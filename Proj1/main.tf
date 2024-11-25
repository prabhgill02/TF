# Terraform file to create an AWS eC2 instance
# From prabhgill02

# main.tf

provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI (specific to us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "8946518_Prabhdeep_Singh_Lab3" 
  }
}

# Output the public IP address
output "server_public_ip" {
  value = aws_instance.web_server.public_ip
  description = "The public IP address of the EC2 instance."
}