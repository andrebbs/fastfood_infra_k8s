provider "aws" {
  region = "us-east-1"
}

provider "kubernetes" {
  host                   = var.k8s_cluster_endpoint
  token                  = var.k8s_cluster_token
  cluster_ca_certificate = base64decode(var.k8s_cluster_ca_certificate)
}
