resource "aws_route_table_association" "simon_rtas_a" {
  subnet_id      = aws_subnet.simon_Puba.id
  route_table_id = aws_route_table.simon_rt.id
}

resource "aws_route_table_association" "simon_rtas_b" {
  subnet_id      = aws_subnet.simon_Pubc.id
  route_table_id = aws_route_table.simon_rt.id
}