resource "kubernetes_config_map" "fastfoodapi_config" {
  metadata {
    name = "fastfoodapi-config"
  }

  data = {
    DatabaseConnectionString = "Host=terraform-20250325053356934400000001.cc66avwpkeh5.us-east-1.rds.amazonaws.com;Port=5432;Username=fastfood;Password=adminpassword123;Database=fastfooddb"
  }
}