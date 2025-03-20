variable "labrole" {
  default = "arn:aws:iam::722811307189:role/LabRole"
}

variable "principalArn" {
  default = "arn:aws:iam::722811307189:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "subnetA" {
  default = "subnet-0da58b715c4447b40"
}

variable "subnetB" {
  default = "subnet-0dc8c17af2d69e6c4"
}

variable "subnetC" {
  default = "subnet-01e7d29bdec7e71dd"
}

variable "sgId" {
  default = "sg-0c52dcdb0a18aab05"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "nodeName" {
  default = "node-fastfood"
}