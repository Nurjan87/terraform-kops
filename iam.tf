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