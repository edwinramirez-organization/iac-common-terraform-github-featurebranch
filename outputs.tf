output "url_git_repositorio" {
  value       = github_repository.repository.git_clone_url
  description = "URL para clonar el repositorio"
}

/*output "url_git_repositorios" {
  value       = github_repository.repositorios[*].git_clone_url
  description = "URL para clonar el repositorio"
}*/