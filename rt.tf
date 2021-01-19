resource "aws_route53_record" "api-stg-happygomarket-com" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.api-stg-happygomarket-com.dns_name
    zone_id                = aws_elb.api-stg-happygomarket-com.zone_id
  }
  name    = "api.stg.happygomarket.com"
  type    = "A"
  zone_id = "/hostedzone/Z02523783LN2JVREK2UFJ"
}

resource "aws_route53_record" "bastion-stg-happygomarket-com" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.bastion-stg-happygomarket-com.dns_name
    zone_id                = aws_elb.bastion-stg-happygomarket-com.zone_id
  }
  name    = "bastion.stg.happygomarket.com"
  type    = "A"
  zone_id = "/hostedzone/Z02523783LN2JVREK2UFJ"
}

resource "aws_route_table_association" "private-us-east-1a-stg-happygomarket-com" {
  route_table_id = aws_route_table.private-us-east-1a-stg-happygomarket-com.id
  subnet_id      = aws_subnet.us-east-1a-stg-happygomarket-com.id
}

resource "aws_route_table_association" "private-us-east-1b-stg-happygomarket-com" {
  route_table_id = aws_route_table.private-us-east-1b-stg-happygomarket-com.id
  subnet_id      = aws_subnet.us-east-1b-stg-happygomarket-com.id
}

resource "aws_route_table_association" "private-us-east-1c-stg-happygomarket-com" {
  route_table_id = aws_route_table.private-us-east-1c-stg-happygomarket-com.id
  subnet_id      = aws_subnet.us-east-1c-stg-happygomarket-com.id
}

resource "aws_route_table_association" "utility-us-east-1a-stg-happygomarket-com" {
  route_table_id = aws_route_table.stg-happygomarket-com.id
  subnet_id      = aws_subnet.utility-us-east-1a-stg-happygomarket-com.id
}

resource "aws_route_table_association" "utility-us-east-1b-stg-happygomarket-com" {
  route_table_id = aws_route_table.stg-happygomarket-com.id
  subnet_id      = aws_subnet.utility-us-east-1b-stg-happygomarket-com.id
}

resource "aws_route_table_association" "utility-us-east-1c-stg-happygomarket-com" {
  route_table_id = aws_route_table.stg-happygomarket-com.id
  subnet_id      = aws_subnet.utility-us-east-1c-stg-happygomarket-com.id
}

resource "aws_route_table" "private-us-east-1a-stg-happygomarket-com" {
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "private-us-east-1a.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-east-1a"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_route_table" "private-us-east-1b-stg-happygomarket-com" {
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "private-us-east-1b.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-east-1b"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_route_table" "private-us-east-1c-stg-happygomarket-com" {
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "private-us-east-1c.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-east-1c"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_route_table" "stg-happygomarket-com" {
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
    "kubernetes.io/kops/role"                     = "public"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_route" "route-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.stg-happygomarket-com.id
  route_table_id         = aws_route_table.stg-happygomarket-com.id
}

resource "aws_route" "route-private-us-east-1a-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1a-stg-happygomarket-com.id
  route_table_id         = aws_route_table.private-us-east-1a-stg-happygomarket-com.id
}

resource "aws_route" "route-private-us-east-1b-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1b-stg-happygomarket-com.id
  route_table_id         = aws_route_table.private-us-east-1b-stg-happygomarket-com.id
}

resource "aws_route" "route-private-us-east-1c-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1c-stg-happygomarket-com.id
  route_table_id         = aws_route_table.private-us-east-1c-stg-happygomarket-com.id
}