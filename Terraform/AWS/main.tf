provider "aws" {
  region = "us-west-1" # Use a region eligible for the AWS Free Tier
}

# Create an EC2 instance
resource "aws_instance" "aws_server" {
  ami           = "ami-0cbd40f694b804622" 
  instance_type = "t2.micro"  

  tags = {
    Name = "aws_server"
  }
}

resource "aws_key_pair" "aws_key_pair" {
  key_name   = "aws_key_pair"
  public_key = file("~/.ssh/id_rsa.pub")  
}

output "public_ip" {
  value = aws_instance.aws_server.public_ip
}

