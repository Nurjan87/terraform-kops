resource "aws_subnet" "us-east-1a-stg-happygomarket-com" {
  availability_zone = "us-east-1a"
  cidr_block        = "172.20.32.0/19"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "us-east-1a.stg.happygomarket.com"
    "SubnetType"                                  = "Private"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_subnet" "us-east-1b-stg-happygomarket-com" {
  availability_zone = "us-east-1b"
  cidr_block        = "172.20.64.0/19"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "us-east-1b.stg.happygomarket.com"
    "SubnetType"                                  = "Private"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_subnet" "us-east-1c-stg-happygomarket-com" {
  availability_zone = "us-east-1c"
  cidr_block        = "172.20.96.0/19"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "us-east-1c.stg.happygomarket.com"
    "SubnetType"                                  = "Private"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_subnet" "utility-us-east-1a-stg-happygomarket-com" {
  availability_zone = "us-east-1a"
  cidr_block        = "172.20.0.0/22"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "utility-us-east-1a.stg.happygomarket.com"
    "SubnetType"                                  = "Utility"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_subnet" "utility-us-east-1b-stg-happygomarket-com" {
  availability_zone = "us-east-1b"
  cidr_block        = "172.20.4.0/22"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "utility-us-east-1b.stg.happygomarket.com"
    "SubnetType"                                  = "Utility"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_subnet" "utility-us-east-1c-stg-happygomarket-com" {
  availability_zone = "us-east-1c"
  cidr_block        = "172.20.8.0/22"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "utility-us-east-1c.stg.happygomarket.com"
    "SubnetType"                                  = "Utility"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}