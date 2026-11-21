variable "c8200l_url" {
  description = "URL HTTPS de gestion del C8200L (ej. https://192.168.10.1)"
  type        = string
}

variable "c8200l_username" {
  description = "Usuario RESTCONF del C8200L"
  type        = string
  sensitive   = true
}

variable "c8200l_password" {
  description = "Password RESTCONF del C8200L"
  type        = string
  sensitive   = true
}