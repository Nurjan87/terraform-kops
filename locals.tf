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

