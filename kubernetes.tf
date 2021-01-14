locals {
  bastion_autoscaling_group_ids     = [aws_autoscaling_group.bastions-stg-happygomarket-com.id]
  bastion_security_group_ids        = [aws_security_group.bastion-stg-happygomarket-com.id]
  bastions_role_arn                 = aws_iam_role.bastions-stg-happygomarket-com.arn
  bastions_role_name                = aws_iam_role.bastions-stg-happygomarket-com.name
  cluster_name                      = "stg.happygomarket.com"
  master_autoscaling_group_ids      = [aws_autoscaling_group.master-us-east-1a-masters-stg-happygomarket-com.id, aws_autoscaling_group.master-us-east-1b-masters-stg-happygomarket-com.id, aws_autoscaling_group.master-us-east-1c-masters-stg-happygomarket-com.id]
  master_security_group_ids         = [aws_security_group.masters-stg-happygomarket-com.id, aws_security_group.masters-stg-happygomarket-com.id, aws_security_group.masters-stg-happygomarket-com.id]
  masters_role_arn                  = aws_iam_role.masters-stg-happygomarket-com.arn
  masters_role_name                 = aws_iam_role.masters-stg-happygomarket-com.name
  node_autoscaling_group_ids        = [aws_autoscaling_group.nodes-stg-happygomarket-com.id]
  node_security_group_ids           = [aws_security_group.nodes-stg-happygomarket-com.id]
  node_subnet_ids                   = [aws_subnet.us-east-1a-stg-happygomarket-com.id, aws_subnet.us-east-1b-stg-happygomarket-com.id, aws_subnet.us-east-1c-stg-happygomarket-com.id]
  nodes_role_arn                    = aws_iam_role.nodes-stg-happygomarket-com.arn
  nodes_role_name                   = aws_iam_role.nodes-stg-happygomarket-com.name
  region                            = "us-east-1"
  route_table_private-us-east-1a_id = aws_route_table.private-us-east-1a-stg-happygomarket-com.id
  route_table_private-us-east-1b_id = aws_route_table.private-us-east-1b-stg-happygomarket-com.id
  route_table_private-us-east-1c_id = aws_route_table.private-us-east-1c-stg-happygomarket-com.id
  route_table_public_id             = aws_route_table.stg-happygomarket-com.id
  subnet_us-east-1a_id              = aws_subnet.us-east-1a-stg-happygomarket-com.id
  subnet_us-east-1b_id              = aws_subnet.us-east-1b-stg-happygomarket-com.id
  subnet_us-east-1c_id              = aws_subnet.us-east-1c-stg-happygomarket-com.id
  subnet_utility-us-east-1a_id      = aws_subnet.utility-us-east-1a-stg-happygomarket-com.id
  subnet_utility-us-east-1b_id      = aws_subnet.utility-us-east-1b-stg-happygomarket-com.id
  subnet_utility-us-east-1c_id      = aws_subnet.utility-us-east-1c-stg-happygomarket-com.id
  vpc_cidr_block                    = aws_vpc.stg-happygomarket-com.cidr_block
  vpc_id                            = aws_vpc.stg-happygomarket-com.id
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-stg-happygomarket-com.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-stg-happygomarket-com.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-stg-happygomarket-com.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-stg-happygomarket-com.name
}

output "cluster_name" {
  value = "stg.happygomarket.com"
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.master-us-east-1a-masters-stg-happygomarket-com.id, aws_autoscaling_group.master-us-east-1b-masters-stg-happygomarket-com.id, aws_autoscaling_group.master-us-east-1c-masters-stg-happygomarket-com.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-stg-happygomarket-com.id, aws_security_group.masters-stg-happygomarket-com.id, aws_security_group.masters-stg-happygomarket-com.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-stg-happygomarket-com.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-stg-happygomarket-com.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-stg-happygomarket-com.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-stg-happygomarket-com.id]
}

output "node_subnet_ids" {
  value = [aws_subnet.us-east-1a-stg-happygomarket-com.id, aws_subnet.us-east-1b-stg-happygomarket-com.id, aws_subnet.us-east-1c-stg-happygomarket-com.id]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-stg-happygomarket-com.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-stg-happygomarket-com.name
}

output "region" {
  value = "us-east-1"
}

output "route_table_private-us-east-1a_id" {
  value = aws_route_table.private-us-east-1a-stg-happygomarket-com.id
}

output "route_table_private-us-east-1b_id" {
  value = aws_route_table.private-us-east-1b-stg-happygomarket-com.id
}

output "route_table_private-us-east-1c_id" {
  value = aws_route_table.private-us-east-1c-stg-happygomarket-com.id
}

output "route_table_public_id" {
  value = aws_route_table.stg-happygomarket-com.id
}

output "subnet_us-east-1a_id" {
  value = aws_subnet.us-east-1a-stg-happygomarket-com.id
}

output "subnet_us-east-1b_id" {
  value = aws_subnet.us-east-1b-stg-happygomarket-com.id
}

output "subnet_us-east-1c_id" {
  value = aws_subnet.us-east-1c-stg-happygomarket-com.id
}

output "subnet_utility-us-east-1a_id" {
  value = aws_subnet.utility-us-east-1a-stg-happygomarket-com.id
}

output "subnet_utility-us-east-1b_id" {
  value = aws_subnet.utility-us-east-1b-stg-happygomarket-com.id
}

output "subnet_utility-us-east-1c_id" {
  value = aws_subnet.utility-us-east-1c-stg-happygomarket-com.id
}

output "vpc_cidr_block" {
  value = aws_vpc.stg-happygomarket-com.cidr_block
}

output "vpc_id" {
  value = aws_vpc.stg-happygomarket-com.id
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_autoscaling_attachment" "bastions-stg-happygomarket-com" {
  autoscaling_group_name = aws_autoscaling_group.bastions-stg-happygomarket-com.id
  elb                    = aws_elb.bastion-stg-happygomarket-com.id
}

resource "aws_autoscaling_attachment" "master-us-east-1a-masters-stg-happygomarket-com" {
  autoscaling_group_name = aws_autoscaling_group.master-us-east-1a-masters-stg-happygomarket-com.id
  elb                    = aws_elb.api-stg-happygomarket-com.id
}

resource "aws_autoscaling_attachment" "master-us-east-1b-masters-stg-happygomarket-com" {
  autoscaling_group_name = aws_autoscaling_group.master-us-east-1b-masters-stg-happygomarket-com.id
  elb                    = aws_elb.api-stg-happygomarket-com.id
}

resource "aws_autoscaling_attachment" "master-us-east-1c-masters-stg-happygomarket-com" {
  autoscaling_group_name = aws_autoscaling_group.master-us-east-1c-masters-stg-happygomarket-com.id
  elb                    = aws_elb.api-stg-happygomarket-com.id
}

resource "aws_autoscaling_group" "bastions-stg-happygomarket-com" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.bastions-stg-happygomarket-com.id
  max_size             = 1
  metrics_granularity  = "1Minute"
  min_size             = 1
  name                 = "bastions.stg.happygomarket.com"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "stg.happygomarket.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.stg.happygomarket.com"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "k8s.io/role/bastion"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "kubernetes.io/cluster/stg.happygomarket.com"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-stg-happygomarket-com.id, aws_subnet.us-east-1b-stg-happygomarket-com.id, aws_subnet.us-east-1c-stg-happygomarket-com.id]
}

resource "aws_autoscaling_group" "master-us-east-1a-masters-stg-happygomarket-com" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.master-us-east-1a-masters-stg-happygomarket-com.id
  max_size             = 1
  metrics_granularity  = "1Minute"
  min_size             = 1
  name                 = "master-us-east-1a.masters.stg.happygomarket.com"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "stg.happygomarket.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1a.masters.stg.happygomarket.com"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1a"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/stg.happygomarket.com"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-stg-happygomarket-com.id]
}

resource "aws_autoscaling_group" "master-us-east-1b-masters-stg-happygomarket-com" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.master-us-east-1b-masters-stg-happygomarket-com.id
  max_size             = 1
  metrics_granularity  = "1Minute"
  min_size             = 1
  name                 = "master-us-east-1b.masters.stg.happygomarket.com"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "stg.happygomarket.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1b.masters.stg.happygomarket.com"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1b"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/stg.happygomarket.com"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1b-stg-happygomarket-com.id]
}

resource "aws_autoscaling_group" "master-us-east-1c-masters-stg-happygomarket-com" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.master-us-east-1c-masters-stg-happygomarket-com.id
  max_size             = 1
  metrics_granularity  = "1Minute"
  min_size             = 1
  name                 = "master-us-east-1c.masters.stg.happygomarket.com"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "stg.happygomarket.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1c.masters.stg.happygomarket.com"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1c"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/stg.happygomarket.com"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1c-stg-happygomarket-com.id]
}

resource "aws_autoscaling_group" "nodes-stg-happygomarket-com" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.nodes-stg-happygomarket-com.id
  max_size             = 3
  metrics_granularity  = "1Minute"
  min_size             = 3
  name                 = "nodes.stg.happygomarket.com"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "stg.happygomarket.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes.stg.happygomarket.com"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes"
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes"
  }
  tag {
    key                 = "kubernetes.io/cluster/stg.happygomarket.com"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-stg-happygomarket-com.id, aws_subnet.us-east-1b-stg-happygomarket-com.id, aws_subnet.us-east-1c-stg-happygomarket-com.id]
}

resource "aws_ebs_volume" "a-etcd-events-stg-happygomarket-com" {
  availability_zone = "us-east-1a"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "a.etcd-events.stg.happygomarket.com"
    "k8s.io/etcd/events"                          = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "a-etcd-main-stg-happygomarket-com" {
  availability_zone = "us-east-1a"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "a.etcd-main.stg.happygomarket.com"
    "k8s.io/etcd/main"                            = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "b-etcd-events-stg-happygomarket-com" {
  availability_zone = "us-east-1b"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "b.etcd-events.stg.happygomarket.com"
    "k8s.io/etcd/events"                          = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "b-etcd-main-stg-happygomarket-com" {
  availability_zone = "us-east-1b"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "b.etcd-main.stg.happygomarket.com"
    "k8s.io/etcd/main"                            = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "c-etcd-events-stg-happygomarket-com" {
  availability_zone = "us-east-1c"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "c.etcd-events.stg.happygomarket.com"
    "k8s.io/etcd/events"                          = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "c-etcd-main-stg-happygomarket-com" {
  availability_zone = "us-east-1c"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "c.etcd-main.stg.happygomarket.com"
    "k8s.io/etcd/main"                            = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  type = "gp2"
}

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

resource "aws_elb" "api-stg-happygomarket-com" {
  cross_zone_load_balancing = false
  health_check {
    healthy_threshold   = 2
    interval            = 10
    target              = "SSL:443"
    timeout             = 5
    unhealthy_threshold = 2
  }
  idle_timeout = 300
  listener {
    instance_port      = 443
    instance_protocol  = "TCP"
    lb_port            = 443
    lb_protocol        = "TCP"
    ssl_certificate_id = ""
  }
  name            = "api-stg-happygomarket-com-i612sg"
  security_groups = [aws_security_group.api-elb-stg-happygomarket-com.id]
  subnets         = [aws_subnet.utility-us-east-1a-stg-happygomarket-com.id, aws_subnet.utility-us-east-1b-stg-happygomarket-com.id, aws_subnet.utility-us-east-1c-stg-happygomarket-com.id]
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "api.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
}

resource "aws_elb" "bastion-stg-happygomarket-com" {
  health_check {
    healthy_threshold   = 2
    interval            = 10
    target              = "TCP:22"
    timeout             = 5
    unhealthy_threshold = 2
  }
  idle_timeout = 300
  listener {
    instance_port      = 22
    instance_protocol  = "TCP"
    lb_port            = 22
    lb_protocol        = "TCP"
    ssl_certificate_id = ""
  }
  name            = "bastion-stg-happygomarket-t9ie6q"
  security_groups = [aws_security_group.bastion-elb-stg-happygomarket-com.id]
  subnets         = [aws_subnet.utility-us-east-1a-stg-happygomarket-com.id, aws_subnet.utility-us-east-1b-stg-happygomarket-com.id, aws_subnet.utility-us-east-1c-stg-happygomarket-com.id]
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "bastion.stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-stg-happygomarket-com" {
  name = "bastions.stg.happygomarket.com"
  role = aws_iam_role.bastions-stg-happygomarket-com.name
}

resource "aws_iam_instance_profile" "masters-stg-happygomarket-com" {
  name = "masters.stg.happygomarket.com"
  role = aws_iam_role.masters-stg-happygomarket-com.name
}

resource "aws_iam_instance_profile" "nodes-stg-happygomarket-com" {
  name = "nodes.stg.happygomarket.com"
  role = aws_iam_role.nodes-stg-happygomarket-com.name
}

resource "aws_iam_role_policy" "bastions-stg-happygomarket-com" {
  name   = "bastions.stg.happygomarket.com"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.stg.happygomarket.com_policy")
  role   = aws_iam_role.bastions-stg-happygomarket-com.name
}

resource "aws_iam_role_policy" "masters-stg-happygomarket-com" {
  name   = "masters.stg.happygomarket.com"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.stg.happygomarket.com_policy")
  role   = aws_iam_role.masters-stg-happygomarket-com.name
}

resource "aws_iam_role_policy" "nodes-stg-happygomarket-com" {
  name   = "nodes.stg.happygomarket.com"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.stg.happygomarket.com_policy")
  role   = aws_iam_role.nodes-stg-happygomarket-com.name
}

resource "aws_iam_role" "bastions-stg-happygomarket-com" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.stg.happygomarket.com_policy")
  name               = "bastions.stg.happygomarket.com"
}

resource "aws_iam_role" "masters-stg-happygomarket-com" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.stg.happygomarket.com_policy")
  name               = "masters.stg.happygomarket.com"
}

resource "aws_iam_role" "nodes-stg-happygomarket-com" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.stg.happygomarket.com_policy")
  name               = "nodes.stg.happygomarket.com"
}

resource "aws_internet_gateway" "stg-happygomarket-com" {
  tags = {
    "KubernetesCluster"                           = "stg.happygomarket.com"
    "Name"                                        = "stg.happygomarket.com"
    "kubernetes.io/cluster/stg.happygomarket.com" = "owned"
  }
  vpc_id = aws_vpc.stg-happygomarket-com.id
}

resource "aws_key_pair" "kubernetes-stg-happygomarket-com-3703ea08684443078907a376f6eef741" {
  key_name   = "kubernetes.stg.happygomarket.com-37:03:ea:08:68:44:43:07:89:07:a3:76:f6:ee:f7:41"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.stg.happygomarket.com-3703ea08684443078907a376f6eef741_public_key")
}

resource "aws_launch_configuration" "bastions-stg-happygomarket-com" {
  associate_public_ip_address = false
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.bastions-stg-happygomarket-com.id
  image_id                    = "ami-08306577a6694f5e7"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.kubernetes-stg-happygomarket-com-3703ea08684443078907a376f6eef741.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "bastions.stg.happygomarket.com-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 32
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.bastion-stg-happygomarket-com.id]
}

resource "aws_launch_configuration" "master-us-east-1a-masters-stg-happygomarket-com" {
  associate_public_ip_address = false
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.masters-stg-happygomarket-com.id
  image_id                    = "ami-08306577a6694f5e7"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.kubernetes-stg-happygomarket-com-3703ea08684443078907a376f6eef741.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "master-us-east-1a.masters.stg.happygomarket.com-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 64
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.masters-stg-happygomarket-com.id]
  user_data       = file("${path.module}/data/aws_launch_configuration_master-us-east-1a.masters.stg.happygomarket.com_user_data")
}

resource "aws_launch_configuration" "master-us-east-1b-masters-stg-happygomarket-com" {
  associate_public_ip_address = false
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.masters-stg-happygomarket-com.id
  image_id                    = "ami-08306577a6694f5e7"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.kubernetes-stg-happygomarket-com-3703ea08684443078907a376f6eef741.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "master-us-east-1b.masters.stg.happygomarket.com-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 64
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.masters-stg-happygomarket-com.id]
  user_data       = file("${path.module}/data/aws_launch_configuration_master-us-east-1b.masters.stg.happygomarket.com_user_data")
}

resource "aws_launch_configuration" "master-us-east-1c-masters-stg-happygomarket-com" {
  associate_public_ip_address = false
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.masters-stg-happygomarket-com.id
  image_id                    = "ami-08306577a6694f5e7"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.kubernetes-stg-happygomarket-com-3703ea08684443078907a376f6eef741.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "master-us-east-1c.masters.stg.happygomarket.com-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 64
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.masters-stg-happygomarket-com.id]
  user_data       = file("${path.module}/data/aws_launch_configuration_master-us-east-1c.masters.stg.happygomarket.com_user_data")
}

resource "aws_launch_configuration" "nodes-stg-happygomarket-com" {
  associate_public_ip_address = false
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.nodes-stg-happygomarket-com.id
  image_id                    = "ami-08306577a6694f5e7"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.kubernetes-stg-happygomarket-com-3703ea08684443078907a376f6eef741.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "nodes.stg.happygomarket.com-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 128
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.nodes-stg-happygomarket-com.id]
  user_data       = file("${path.module}/data/aws_launch_configuration_nodes.stg.happygomarket.com_user_data")
}

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

terraform {
  required_version = ">= 0.12.0"
}
