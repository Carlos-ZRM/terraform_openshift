resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_service_account" "sa_xpk" {
  metadata {
    name = "sa-xpk"
    namespace = var.namespace
  }
}

resource "kubernetes_secret" "sa_secret_xpk" {
  metadata {
    annotations = {
      "kubernetes.io/service-account.name" = kubernetes_service_account.sa_xpk.metadata.0.name
    }
    generate_name = "sa-xpk"
    namespace = var.namespace

  }
  type                           = "kubernetes.io/service-account-token"
  wait_for_service_account_token = true
}

resource "kubernetes_cluster_role_binding" "crbac_adm_xpk" {
  metadata {
    name = "rbac_admin"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind = "ClusterRole"
    name = "cluster-admin"
  }
  subject {
    kind = "ServiceAccount"
    name = kubernetes_service_account.sa_xpk.metadata[0].name
    namespace = kubernetes_namespace.namespace.metadata[0].name
  }
}