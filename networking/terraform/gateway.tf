resource "aws_route" "volterra-gateway" {
  route_table_id         = aws_route_table.f5-volterra-vpc-external-rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.f5-volterra-vpc-gw.id
  depends_on             = [aws_route_table.f5-volterra-vpc-external-rt]
}

resource "aws_route_table_association" "f5-volterra-management-1" {
  subnet_id      = aws_subnet.f5-volterra-management-1.id
  route_table_id = aws_route_table.f5-volterra-vpc-external-rt.id
}

resource "aws_route_table_association" "f5-volterra-management-2" {
  subnet_id      = aws_subnet.f5-volterra-management-2.id
  route_table_id = aws_route_table.f5-volterra-vpc-external-rt.id
}



