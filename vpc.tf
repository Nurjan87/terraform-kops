resource "aws_vpc_dhcp_options_association" "stg-happygomarket-com" {
  dhcp_options_id = aws_vpc_dhcp_options.stg-happygomarket-com.id
  vpc_id          = aws_vpc.stg-happygomarket-com.id
}

resource "aws_vpc_dhcp_options" "stg-happygomarket-com" {
  domain_name         = "ec2.internal"
  domain_name_servers = ["AmazonProvidedDNS"]
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
}

resource "aws_vpc" "stg-happygomarket-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
}