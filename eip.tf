resource "aws_eip" "us-east-1a-stg-happygomarket-com" {
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "us-east-1a.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc = true
}

resource "aws_eip" "us-east-1b-stg-happygomarket-com" {
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "us-east-1b.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc = true
}

resource "aws_eip" "us-east-1c-stg-happygomarket-com" {
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "us-east-1c.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc = true
}