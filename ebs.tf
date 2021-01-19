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