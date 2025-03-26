resource "kubernetes_deployment" "fastfoodapi_deployment" {
  metadata {
    name      = "fastfoodapi-deployment"
    namespace = "fastfood" 
    labels = {
      app = "fastfoodapi"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = "fastfoodapi"
      }
    }

    template {
      metadata {
        labels = {
          app = "fastfoodapi"
        }
      }

      spec {
        container {
          name  = "fastfoodapi-container"
          image = "dleall2472/fastfoodapi:latest"

          port {
            container_port = 8080
          }

          env {
            name = "DatabaseConnectionString"
            value_from {
              config_map_key_ref {
                name = "fastfoodapi-config"
                key  = "DatabaseConnectionString"
              }
            }
          }

          env {
            name = "WebhookSettings_SecretKey"
            value_from {
              secret_key_ref {
                name = "fastfoodapi-secrets"
                key  = "WebhookSettings_SecretKey"
              }
            }
          }

          env {
            name = "Acess_Token_SecretKey"
            value_from {
              secret_key_ref {
                name = "fastfoodapi-secrets"
                key  = "Acess_Token_SecretKey"
              }
            }
          }

          env {
            name = "POS_KEY"
            value_from {
              secret_key_ref {
                name = "fastfoodapi-secrets"
                key  = "POS_KEY"
              }
            }
          }
        }
      }
    }
  }
}