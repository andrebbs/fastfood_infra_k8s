resource "kubernetes_service" "fastfoodapi_service" {
  metadata {
    name = "fastfoodapi-service"
    labels = {
      app = "fastfoodapi"
    }
  }

  spec {
    selector = {
      app = "fastfoodapi"
    }

    port {
      port        = 80
      target_port = 8080
    }

    type = "ClusterIP"
  }
}