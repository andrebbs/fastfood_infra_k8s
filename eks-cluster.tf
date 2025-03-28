resource "aws_eks_cluster" "fastfood" {
  name     = "fastfood-api"
  role_arn = var.labrole

  vpc_config {
    subnet_ids         = [var.subnetA, var.subnetB, var.subnetC]
    security_group_ids = [var.sgId]
  }

  access_config {
    authentication_mode = var.accessConfig
  }

  lifecycle {
    ignore_changes = [name, vpc_config, access_config]
  }
}