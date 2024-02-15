#VPC
resource "aws_vpc" "main" {
  cidr_block = var.cidr_vpc
  tags = {
    Name = "bhardwaj"
  }
}

#Subnet 
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr

  tags = {
    Name = "bhardwaj-test"
  }
}

resource "aws_subnet" "main1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr1

  tags = {
    Name = "bhardwaj-test-1"
  }
}

resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr2

  tags = {
    Name = "bhardwaj-test-2"
  }
}

#Route Table 
resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.cidr_vpc
    gateway_id = "local"
  }

  tags = {
    Name = "bhardwaj"
  }
}
resource "aws_route_table_association" "main" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "main1" {
  subnet_id      = aws_subnet.main1.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "main2" {
  subnet_id      = aws_subnet.main2.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route" "main" {
  route_table_id         = aws_route_table.main.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}

#IGW
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "bhardwaj"
  }
}