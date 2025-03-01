variable "environment" {}

module "ecr" {
  source      = "./modules/ECR"
  environment = var.environment
}

module "lambda" {
  source      = "./modules/LAMDA"
  environment = var.environment
}

module "api_gateway" {
  source      = "./modules/API_Gateway"
  environment = var.environment
}
