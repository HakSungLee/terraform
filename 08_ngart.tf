resource "aws_route_table" "simon_gma_rt_a" {
  vpc_id = aws_vpc.simon_vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.simon_nga_a.id
    }

  tags = {
    Name = "simon-nga-rt-a"
  }
}

resource "aws_route_table" "simon_gma_rt_c" {
  vpc_id = aws_vpc.simon_vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.simon_nga_c.id
    }

  tags = {
    Name = "simon-nga-rt-c"
  }
}