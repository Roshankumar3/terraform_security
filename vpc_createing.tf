resource "aws_vpc" "vcube_129" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "vcube-sub" {
  vpc_id = aws_vpc.vcube_129.id
  availability_zone = "us-east-1"
  cidr_block = "10.0.1.0/24"
  tags = {
    name = "vcube129-subnet-1"
  }
}
resource "aws_internet_gateway" "vcube-gtw" {
vpc_id =aws_vpc.vcube_129.id
 tags = {
 name = "vcube_120-gtw"
 } 
}