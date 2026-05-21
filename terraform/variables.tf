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

variable "frontend_repo" {
  description = "GitHub repository URL for the frontend (HTTPS)"
  type        = string
  default     = "https://github.com/bstocker/ATELIER_RENDER_2026"
}

variable "frontend_branch" {
  description = "Branch to build for the frontend"
  type        = string
  default     = "main"
}

variable "frontend_root" {
  description = "Root directory of the frontend in the repo"
  type        = string
  default     = "frontend"
}

variable "frontend_build_command" {
  description = "Build command for the frontend"
  type        = string
  default     = "pnpm build"
}

variable "frontend_publish_path" {
  description = "Publish directory after build"
  type        = string
  default     = "dist"
}
