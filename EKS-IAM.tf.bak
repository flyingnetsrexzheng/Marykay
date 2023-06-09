# 创建EKS Cluster IAM Role
resource "aws_iam_role" "EKS_Cluster_Role" {
  name = "EKS_Cluster_Role"

  # 信任关系
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "Marykay-EKS_Cluster_Role"
  }
}

# 采集已存在的EKS Cluster IAM 策略1
data "aws_iam_policy" "EKS_Cluster_Policy1" {
  arn = "arn:aws-cn:iam::aws:policy/AmazonEKSClusterPolicy"
}

# 采集已存在的EKS Cluster IAM 策略2
data "aws_iam_policy" "EKS_Cluster_Policy2" {
  arn = "arn:aws-cn:iam::aws:policy/AmazonEKSServicePolicy"
}

# 关联EKS Cluster IAM Role和已存在的官方EKS Cluster Policy1
resource "aws_iam_role_policy_attachment" "EKS_Cluster_Role_Policy_Attachment1" {
  role       = aws_iam_role.EKS_Cluster_Role.name
  policy_arn = data.aws_iam_policy.EKS_Cluster_Policy1.arn
}

# 关联EKS Cluster IAM Role和已存在的官方EKS Cluster Policy2
resource "aws_iam_role_policy_attachment" "EKS_Cluster_Role_Policy_Attachment2" {
  role       = aws_iam_role.EKS_Cluster_Role.name
  policy_arn = data.aws_iam_policy.EKS_Cluster_Policy2.arn
}





# 创建EKS Node IAM Role
resource "aws_iam_role" "EKS_Node_Role" {
  name = "EKS_Node_Role"

  # 信任关系
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com.cn"
        }
      },
    ]
  })

  tags = {
    tag-key = "Marykay-EKS_EKS_Node_Role_Role"
  }
}

# 采集已存在的EKS Node IAM 策略1
data "aws_iam_policy" "EKS_Node_Role1" {
  arn = "arn:aws-cn:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

# 采集已存在的EKS Node IAM 策略2
data "aws_iam_policy" "EKS_Node_Role2" {
  arn = "arn:aws-cn:iam::aws:policy/AmazonEKS_CNI_Policy"
}

# 采集已存在的EKS Node IAM 策略3
data "aws_iam_policy" "EKS_Node_Role3" {
  arn = "arn:aws-cn:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

# 采集已存在的EKS Node IAM 策略4
data "aws_iam_policy" "EKS_Node_Role4" {
  arn = "arn:aws-cn:iam::aws:policy/AmazonS3FullAccess"
}

# 采集已存在的EKS Node IAM 策略5
data "aws_iam_policy" "EKS_Node_Role5" {
  arn = "arn:aws-cn:iam::aws:policy/AmazonElasticFileSystemFullAccess"
}

# 关联EKS Node IAM Role和已存在的官方EKS Node Policy1
resource "aws_iam_role_policy_attachment" "EKS_Node_Role_Policy_Attachment1" {
  role       = aws_iam_role.EKS_Node_Role.name
  policy_arn = data.aws_iam_policy.EKS_Node_Role1.arn
}

# 关联EKS Node IAM Role和已存在的官方EKS Node Policy2
resource "aws_iam_role_policy_attachment" "EKS_Node_Role_Policy_Attachment2" {
  role       = aws_iam_role.EKS_Node_Role.name
  policy_arn = data.aws_iam_policy.EKS_Node_Role2.arn
}

# 关联EKS Node IAM Role和已存在的官方EKS Node Policy3
resource "aws_iam_role_policy_attachment" "EKS_Node_Role_Policy_Attachment3" {
  role       = aws_iam_role.EKS_Node_Role.name
  policy_arn = data.aws_iam_policy.EKS_Node_Role3.arn
}

# 关联EKS Node IAM Role和已存在的官方EKS Node Policy4
resource "aws_iam_role_policy_attachment" "EKS_Node_Role_Policy_Attachment4" {
  role       = aws_iam_role.EKS_Node_Role.name
  policy_arn = data.aws_iam_policy.EKS_Node_Role4.arn
}

# 关联EKS Node IAM Role和已存在的官方EKS Node Policy5
resource "aws_iam_role_policy_attachment" "EKS_Node_Role_Policy_Attachment5" {
  role       = aws_iam_role.EKS_Node_Role.name
  policy_arn = data.aws_iam_policy.EKS_Node_Role5.arn
}
