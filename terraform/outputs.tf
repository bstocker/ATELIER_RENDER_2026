output "service_name" {
  value = render_web_service.flask_app.name
}

output "adminer_service_name" {
  value = render_web_service.adminer.name
}

output "frontend_service_name" {
  value = render_static_site.frontend.name
}
