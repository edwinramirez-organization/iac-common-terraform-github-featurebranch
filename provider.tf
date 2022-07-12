terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.26.1"
    }
  }

  backend "s3" {
    bucket = "bucket-estados"
    key    = "estados/edwin-ramirez-featurebranch-github"
    region = "us-east-1"
  }

}

provider "github" {
  owner = var.organizacion
}