resource "aws_eip" "lb_ip_a" {
  #instance = aws_instance.web.id
  vpc      = true
}

resource "aws_eip" "lb_ip_c" {
  #instance = aws_instance.web.id
  vpc      = true
}

resource "aws_nat_gateway" "simon_nga_a" {
  allocation_id = aws_eip.lb_ip_a.id
  subnet_id = aws_subnet.simon_pria.id

  tags = {
    Name = "simon-nga-a"
  }
  
}

resource "aws_nat_gateway" "simon_nga_c" {
  allocation_id = aws_eip.lb_ip_c.id
  subnet_id = aws_subnet.simon_pric.id
  
  tags = {
    Name = "simon-nga-c"
  }

}