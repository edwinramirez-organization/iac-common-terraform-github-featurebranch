variable "organizacion" {
  type        = string
  description = "El nombre de la organizacion"
  default     = "edwinramirez-organization"
}
variable "repositorio_visibilidad" {
  type        = string
  description = "visibilidad del repositorio"
}
variable "repositorio_descripcion" {
  type        = string
  description = "descripcion del repositorio"
}
variable "repositorio_nombre" {
  type        = string
  description = "nombre del repositorio"
}

variable "repositorios" {
  type        = list(string)
  description = "Nombres de los repositorios"
}