terraform {
  required_providers {
    render = {
      source  = "render-oss/render"
      version = ">= 1.7.0"
    }
  }
}

provider "render" {
  api_key  = var.render_api_key
  owner_id = var.render_owner_id
}

resource "render_web_service" "flask_app" {
  name   = "flask-render-iac-${var.github_actor}"
  plan   = "free"
  region = "frankfurt"

  runtime_source = {
    image = {
      image_url = var.image_url
      tag       = var.image_tag
    }
  }

  env_vars = {
    ENV = {
      value = "production"
    }
  }
}

resource "render_web_service" "adminer" {
  name   = "adminer-${var.github_actor}"
  plan   = "free"
  region = "frankfurt"

  runtime_source = {
    image = {
      image_url = var.adminer_image_url
      tag       = var.adminer_image_tag
    }
  }
}

resource "render_static_site" "frontend" {
  name           = "frontend-static-${var.github_actor}"
  repo_url       = var.frontend_repo
  branch         = var.frontend_branch
  root_directory = var.frontend_root
  build_command  = var.frontend_build_command
  publish_path   = var.frontend_publish_path
  auto_deploy    = true
}
