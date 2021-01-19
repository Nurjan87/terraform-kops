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