resource "github_repository" "template" {
  name        = "iac-common-terraform-template"
  description = "Repositorio plantilla de terraform"
  visibility  = var.repositorio_visibilidad
  is_template = true
}

resource "github_repository" "repository" {
  name        = var.repositorio_nombre
  description = var.repositorio_descripcion
  visibility  = "public"
  template {
    owner      = var.organizacion
    repository = github_repository.template.name
  }
}

/*resource "github_repository" "repositorios" {
  count       = length(var.repositorios)
  name        = var.repositorios[count.index]
  description = var.repositorio_descripcion
  visibility  = var.repositorio_visibilidad
}*/

/*resource "github_branch" "main" {
  repository = github_repository.repository.name
  branch     = "main"
}*/

/*resource "github_branch_default" "default"{
  repository = github_repository.example.name
  branch     = github_branch.development.branch
}*/

# Protect the main branch of the foo repository. Additionally, require that
# the "ci/travis" context to be passing and only allow the engineers team merge
# to the branch.

resource "github_branch_protection" "branch_protection" {
  repository_id = github_repository.repository.node_id
  # also accepts repository name
  # repository_id  = github_repository.example.name

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = true

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 2
  }
}