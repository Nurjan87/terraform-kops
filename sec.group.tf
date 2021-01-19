resource "aws_security_group_rule" "all-master-to-master" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.masters-stg-happygomarket-com.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "all-master-to-node" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.masters-stg-happygomarket-com.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "all-node-to-node" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.nodes-stg-happygomarket-com.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "api-elb-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-stg-happygomarket-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "bastion-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-stg-happygomarket-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-stg-happygomarket-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.bastion-stg-happygomarket-com.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.bastion-stg-happygomarket-com.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-stg-happygomarket-com.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.api-elb-stg-happygomarket-com.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.api-elb-stg-happygomarket-com.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "master-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-stg-happygomarket-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "node-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-stg-happygomarket-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.nodes-stg-happygomarket-com.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.nodes-stg-happygomarket-com.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.nodes-stg-happygomarket-com.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.nodes-stg-happygomarket-com.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.bastion-stg-happygomarket-com.id
  source_security_group_id = aws_security_group.bastion-elb-stg-happygomarket-com.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-stg-happygomarket-com.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group" "api-elb-stg-happygomarket-com" {
  description = "Security group for api ELB"
  name        = "api-elb.stg.happygomarket.com"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "api-elb.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_security_group" "bastion-elb-stg-happygomarket-com" {
  description = "Security group for bastion ELB"
  name        = "bastion-elb.stg.happygomarket.com"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "bastion-elb.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_security_group" "bastion-stg-happygomarket-com" {
  description = "Security group for bastion"
  name        = "bastion.stg.happygomarket.com"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "bastion.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_security_group" "masters-stg-happygomarket-com" {
  description = "Security group for masters"
  name        = "masters.stg.happygomarket.com"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "masters.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_security_group" "nodes-stg-happygomarket-com" {
  description = "Security group for nodes"
  name        = "nodes.stg.happygomarket.com"
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "nodes.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}