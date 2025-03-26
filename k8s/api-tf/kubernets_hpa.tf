resource "kubernetes_horizontal_pod_autoscaler" "fastfoodapi_hpa" {
  metadata {
    name = "fastfoodapi-hpa"
    namespace = "fastfood"
  }

  spec {
    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = "fastfoodapi-deployment"
    }

    min_replicas = 2
    max_replicas = 10

    metric {
      type = "Resource"

      resource {
        name = "cpu"
        target {
          type               = "Utilization"
          average_utilization = 80
        }
      }
    }
  }
}