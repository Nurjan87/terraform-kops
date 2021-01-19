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