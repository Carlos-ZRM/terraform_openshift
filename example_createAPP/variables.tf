variable "host" {
   type = string
   default = "https://api.shrocp4upi414ovn.lab.upshift.rdu2.redhat.com:6443"
}

variable "token_temp" {
   type = string
   default = "sha256~zhaSJG3bFlNtUanK7IjyvtSQudK5v6tUx3RRVvlK01A"
}

variable "namespace" {
  type = string
  default = "terraforms"
}

variable "app_name" {
  type = string
  default = "httpdxpk"
}

variable "image" {
  type = string
  default = "registry.access.redhat.com/ubi9/httpd-24"
}
variable "inage_tag" {
   type = string
   default = "1-301"
  
}

variable "http_port" {
  type = number
  default = 8080
}

variable "https_port" {
  type = number
  default = 8443
}