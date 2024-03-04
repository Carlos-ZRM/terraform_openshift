module "http_app" {
  source = "./modules/http_app/"
  image = var.image
  image_tag = var.inage_tag
  app_name = var.app_name
  namespace = var.namespace
}