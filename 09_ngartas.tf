resource "aws_route_table_association" "simon_ngartas_a" {
  subnet_id = aws_subnet.simon_pria.id
  route_table_id = aws_route_table.simon_nga_rt_a.id
}

resource "aws_route_table_association" "simon_ngartas_c" {
  subnet_id = aws_subnet.simon_pric.id
  route_table_id = aws_route_table.simon_nga_rt_c.id
}