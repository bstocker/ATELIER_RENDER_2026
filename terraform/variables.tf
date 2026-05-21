variable "render_api_key" {
  type      = string
  sensitive = true
}

variable "render_owner_id" {
  type = string
}

variable "image_url" {
  type = string
}

variable "image_tag" {
  type = string
}

variable "adminer_image_url" {
  description = "Adminer image (docker hub)"
  type        = string
  default     = "adminer"
}

variable "adminer_image_tag" {
  description = "Adminer image tag"
  type        = string
  default     = "latest"
}
