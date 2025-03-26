resource "kubernetes_secret" "fastfoodapi_secrets" {
  metadata {
    name = "fastfoodapi-secrets"
  }

  data = {
    WebhookSettings_SecretKey = base64encode("your-webhook-secret-key")
    Acess_Token_SecretKey     = base64encode("your-access-token-secret-key")
    POS_KEY                   = base64encode("your-pos-key")
  }

  type = "Opaque"
}