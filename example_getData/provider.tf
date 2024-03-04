# provider "kubernetes" {
#   username = "kubeadmin"
#   password = "9VXu7-YCvyt-pQY95-LzCWr"
#   host= "https://api.shrocp4upi413ovn.lab.upshift.rdu2.redhat.com:6443"
#   insecure = true
# }

provider "kubernetes" {
  config_path = "~/.kube/config"
}
