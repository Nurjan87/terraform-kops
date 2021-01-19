resource "aws_internet_gateway" "stg-happygomarket-com" {
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}