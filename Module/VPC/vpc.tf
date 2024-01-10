
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "demo-vpc"
  }
}
resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.0.0/25"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }
}
resource "aws_route_table" "rt-1" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "pub-route-table"
  }
}
resource "aws_route_table_association" "rt-aso-1" {
  route_table_id = aws_route_table.rt-1.id
  subnet_id      = aws_subnet.subnet1.id
}
resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "VPC-IGW"
  }
}
resource "aws_route" "my-route" {
  route_table_id         = aws_route_table.rt-1.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw1.id
}

resource "aws_security_group" "sg-1" {
  name   = "terraform-sg"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
