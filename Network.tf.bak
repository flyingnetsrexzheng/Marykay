#创建vpc
resource "aws_vpc" "test" {
  #定义ip块
  cidr_block = "10.10.0.0/16"
  #设置允许dns主机名
  enable_dns_hostnames = true
  #设置标签
  tags = {
    Name = "Marykay-VPC"
  }
}

#创建internet网关，别名test，并附加到VPC
resource "aws_internet_gateway" "test" {
  #绑定到vpc，${aws_vpc.test.id}为获取步骤2创建的vpc id
  vpc_id = aws_vpc.test.id
  tags = {
    Name = "Marykay_IGW"
  }
}

#创建公共子网1，别名a_public1
resource "aws_subnet" "a_public1" {
  #指定所属的VPC
  vpc_id = aws_vpc.test.id
  #设置ip块
  cidr_block = "10.10.1.0/24"
  #设置可用区
  availability_zone = var.variable_zone1
  #设置标签
  tags = {
    Name = "Marykay_public_subnet1",
	"kubernetes.io/role/elb" = 1
  }
}


#创建公共路由表1
resource "aws_route_table" "a_public1" {
  #指定所属的VPC
  vpc_id = aws_vpc.test.id
  #绑定internet gateway，并绑定到0.0.0.0/0
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test.id
  }
  tags = {
    Name = "Marykay_public_routetable1"
  }
}


#关联公共子网和公共路由表1
resource "aws_route_table_association" "a_public1" {
  #指定子网id
  subnet_id = aws_subnet.a_public1.id
  #指定路由表id
  route_table_id = aws_route_table.a_public1.id
}




#创建公共子网2，别名a_public2
resource "aws_subnet" "a_public2" {
  #指定所属的VPC
  vpc_id = aws_vpc.test.id
  #设置ip块
  cidr_block = "10.10.2.0/24"
  #设置可用区
  availability_zone = var.variable_zone2
  #设置标签

  tags = {
    Name = "Marykay_public_Subnet2",
	"kubernetes.io/role/elb" = 1
  }

}

#创建公共路由表2
resource "aws_route_table" "a_public2" {
  #指定所属的VPC
  vpc_id = aws_vpc.test.id
  #绑定internet gateway，并绑定到0.0.0.0/0
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test.id
  }
  tags = {
    Name = "Marykay_public_routetable2"
  }
}


#关联公共子网和公共路由表2
resource "aws_route_table_association" "a_public2" {
  #指定子网id
  subnet_id = aws_subnet.a_public2.id
  #指定路由表id
  route_table_id = aws_route_table.a_public2.id
}


#创建公共子网3，别名a_public3
resource "aws_subnet" "a_public3" {
  #指定所属的VPC
  vpc_id = aws_vpc.test.id
  #设置ip块
  cidr_block = "10.10.3.0/24"
  #设置可用区
  availability_zone = var.variable_zone3
  #设置标签

  tags = {
    Name = "Marykay_public_Subnet3",
	"kubernetes.io/role/elb" = 1
  }

}

#创建公共路由表3
resource "aws_route_table" "a_public3" {
  #指定所属的VPC
  vpc_id = aws_vpc.test.id
  #绑定internet gateway，并绑定到0.0.0.0/0
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test.id
  }
  tags = {
    Name = "Marykay_public_routetable3"
  }
}


#关联公共子网和公共路由表3
resource "aws_route_table_association" "a_public3" {
  #指定子网id
  subnet_id = aws_subnet.a_public3.id
  #指定路由表id
  route_table_id = aws_route_table.a_public3.id
}



#创建私有子网1，别名a_private1
resource "aws_subnet" "a_private1" {
  #指定所属的VPC
  vpc_id = aws_vpc.test.id
  #设置ip块
  cidr_block = "10.10.11.0/24"
  #设置可用区
  availability_zone = var.variable_zone1
  #设置标签
  
  tags = {
    Name = "Marykay_private_Subnet1"
  }

}



#创建私网路由表1
resource "aws_route_table" "a_private1" {
  vpc_id = aws_vpc.test.id
  #绑定internet gateway，并绑定到0.0.0.0/0
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.example.id
  }
  tags = {
    Name = "Marykay_private_routetable1"
  }
}


#关联私有子网和私有路由表1
resource "aws_route_table_association" "a_private1" {
  #指定子网id
  subnet_id = aws_subnet.a_private1.id
  #指定路由表id
  route_table_id = aws_route_table.a_private1.id
}




#创建私有子网2，别名a_private2
resource "aws_subnet" "a_private2" {
  #指定所属的VPC
  vpc_id = aws_vpc.test.id
  #设置ip块
  cidr_block = "10.10.12.0/24"
  #设置可用区
  availability_zone = var.variable_zone2
  #设置标签
  
  tags = {
    Name = "Marykay_private_Subnet2"
  }

}



#创建私网路由表2
resource "aws_route_table" "a_private2" {
  vpc_id = aws_vpc.test.id
  #绑定internet gateway，并绑定到0.0.0.0/0
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.example.id
  }
  tags = {
    Name = "Marykay_private_routetable2"
  }
}


#关联私有子网和私有路由表2
resource "aws_route_table_association" "a_private2" {
  #指定子网id
  subnet_id = aws_subnet.a_private2.id
  #指定路由表id
  route_table_id = aws_route_table.a_private2.id
}



#创建私有子网3，别名a_private3
resource "aws_subnet" "a_private3" {
  #指定所属的VPC
  vpc_id = aws_vpc.test.id
  #设置ip块
  cidr_block = "10.10.13.0/24"
  #设置可用区
  availability_zone = var.variable_zone3
  #设置标签
  
  tags = {
    Name = "Marykay_private_Subnet3"
  }

}



#创建私网路由表3
resource "aws_route_table" "a_private3" {
  vpc_id = aws_vpc.test.id
  #绑定internet gateway，并绑定到0.0.0.0/0
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.example.id
  }
  tags = {
    Name = "Marykay_private_routetable3"
  }
}


#关联私有子网和私有路由表3
resource "aws_route_table_association" "a_private3" {
  #指定子网id
  subnet_id = aws_subnet.a_private3.id
  #指定路由表id
  route_table_id = aws_route_table.a_private3.id
}




#创建EIP
resource "aws_eip" "myEIP" {
  vpc = true
  tags = {
    Name = "Marykay_NAT_EIP"
  }
}

#创建NAT_GATEWAY关联EIP
resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.myEIP.id
  subnet_id     = aws_subnet.a_public1.id

  tags = {
    Name = "Marykay_NAT"
  }

  depends_on = [aws_internet_gateway.test]
}
