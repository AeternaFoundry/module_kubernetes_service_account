output "service_accounts_id" {
  description = "Map of id values across all service_accounts, keyed the same as var.service_accounts except keys with no id are omitted"
  value       = { for k, v in kubernetes_service_account.service_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_accounts_automount_service_account_token" {
  description = "Map of automount_service_account_token values across all service_accounts, keyed the same as var.service_accounts except keys with no automount_service_account_token are omitted"
  value       = { for k, v in kubernetes_service_account.service_accounts : k => v.automount_service_account_token if v.automount_service_account_token != null }
}
output "service_accounts_default_secret_name" {
  description = "Map of default_secret_name values across all service_accounts, keyed the same as var.service_accounts except keys with no default_secret_name are omitted"
  value       = { for k, v in kubernetes_service_account.service_accounts : k => v.default_secret_name if v.default_secret_name != null && length(v.default_secret_name) > 0 }
}
output "service_accounts_image_pull_secret" {
  description = "Map of image_pull_secret values across all service_accounts, keyed the same as var.service_accounts except keys with no image_pull_secret are omitted"
  value       = { for k, v in kubernetes_service_account.service_accounts : k => v.image_pull_secret if v.image_pull_secret != null && length(v.image_pull_secret) > 0 }
}
output "service_accounts_metadata" {
  description = "Map of metadata values across all service_accounts, keyed the same as var.service_accounts except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_service_account.service_accounts : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "service_accounts_secret" {
  description = "Map of secret values across all service_accounts, keyed the same as var.service_accounts except keys with no secret are omitted"
  value       = { for k, v in kubernetes_service_account.service_accounts : k => v.secret if v.secret != null && length(v.secret) > 0 }
}

