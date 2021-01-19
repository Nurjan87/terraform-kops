resource "aws_key_pair" "kubernetes-stg-happygomarket-com-3703ea08684443078907a376f6eef741" {
  key_name   = "kubernetes.stg.happygomarket.com-37:03:ea:08:68:44:43:07:89:07:a3:76:f6:ee:f7:41"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.stg.happygomarket.com-3703ea08684443078907a376f6eef741_public_key")
}