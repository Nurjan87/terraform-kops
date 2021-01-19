resource "aws_nat_gateway" "us-east-1a-stg-happygomarket-com" {
  allocation_id = aws_eip.us-east-1a-stg-happygomarket-com.id
  subnet_id     = aws_subnet.utility-us-east-1a-stg-happygomarket-com.id
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "us-east-1a.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1b-stg-happygomarket-com" {
  allocation_id = aws_eip.us-east-1b-stg-happygomarket-com.id
  subnet_id     = aws_subnet.utility-us-east-1b-stg-happygomarket-com.id
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "us-east-1b.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1c-stg-happygomarket-com" {
  allocation_id = aws_eip.us-east-1c-stg-happygomarket-com.id
  subnet_id     = aws_subnet.utility-us-east-1c-stg-happygomarket-com.id
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "us-east-1c.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
}