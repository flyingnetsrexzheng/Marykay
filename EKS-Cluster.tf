# 创建EKS Cluster
resource "aws_eks_cluster" "Terraform_EKS_Cluster" {
  name     = "Marykay_EKS_CLUSTER"
  role_arn = aws_iam_role.EKS_Cluster_Role.arn
  #选择EKS Cluster 节点资源即将部署的子网
  vpc_config {
    subnet_ids = [aws_subnet.a_private1.id,aws_subnet.a_private2.id,aws_subnet.a_private3.id]
  }
  kubernetes_network_config {
    service_ipv4_cidr = "10.111.0.0/16"
  }

  depends_on = [
    aws_iam_role_policy_attachment.EKS_Cluster_Role_Policy_Attachment1,
    aws_iam_role_policy_attachment.EKS_Cluster_Role_Policy_Attachment2,
  ]
  tags = {
    name = "Marykay_EKS_CLUSTER"
  }
}

output "endpoint" {
  value = aws_eks_cluster.Terraform_EKS_Cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
    value = aws_eks_cluster.Terraform_EKS_Cluster.certificate_authority[0].data
}


#创建EKS NODE安全组
resource "aws_security_group" "exampleEKSNODE" {
  name   = "exampleEKSNODE"
  vpc_id = aws_vpc.test.id
  # ICMP
  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "icmp"
  }


  # Inbound internet access
  ingress {
    from_port   = 30000
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["10.10.0.0/16"]
    description = "inbound"
  }

  # Outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "outbound"
  }

  tags = {
    Name = "Marykay_EKS_SG"
  }

}


# 创建EKS Node组
resource "aws_eks_node_group" "Terraform_EKS_Node1" {
  cluster_name    = aws_eks_cluster.Terraform_EKS_Cluster.name
  node_group_name = "Marykay-node1"
  node_role_arn   = aws_iam_role.EKS_Node_Role.arn
  subnet_ids      = [aws_subnet.a_private1.id,aws_subnet.a_private2.id,aws_subnet.a_private3.id]
  disk_size       = "300"
  instance_types  = ["m5.2xlarge"]

  # 伸缩节点设置
  scaling_config {
    desired_size = 3
    max_size     = 3
    min_size     = 1

  }
  remote_access {
    ec2_ssh_key  = var.EC2-key-pair
    source_security_group_ids  = [aws_security_group.exampleEKSNODE.id]
  }

  update_config {
    max_unavailable = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.EKS_Node_Role_Policy_Attachment1,
    aws_iam_role_policy_attachment.EKS_Node_Role_Policy_Attachment2,
    aws_iam_role_policy_attachment.EKS_Node_Role_Policy_Attachment3,
	aws_iam_role_policy_attachment.EKS_Node_Role_Policy_Attachment4,
    aws_iam_role_policy_attachment.EKS_Node_Role_Policy_Attachment5,
  ]
  tags = {
    name = "Marykay_EKS_NODE1"
  }
}
