
output "sa_xpk_token" {
  value = kubernetes_secret.sa_secret_xpk.data.token
  sensitive = true
}

output "login_cmd" {
  value = "oc login --token ${kubernetes_secret.sa_secret_xpk.data.token} --server=${var.host} \n"
  sensitive = true
}