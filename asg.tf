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