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