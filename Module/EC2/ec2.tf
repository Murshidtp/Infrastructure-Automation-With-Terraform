resource "aws_instance" "my-ec2" {
  ami             = "ami-0d951b011aa0b2c19"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.subnet1.id
  key_name        = "terraform"
  security_groups = [aws_security_group.sg-1.id]
  user_data       = file(script.sh)  
  tags = {
    Name = "terraform-ec2"
  }
}
