resource "aws_route_table" "simon_rt" {
  vpc_id = aws_vpc.simon_vpc.id


  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.simon-igw.id
    }
  

  tags = {
    Name = "simon-route-table"
  }
}