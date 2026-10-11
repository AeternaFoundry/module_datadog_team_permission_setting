output "team_permission_settings_id" {
  description = "Map of id values across all team_permission_settings, keyed the same as var.team_permission_settings except keys with no id are omitted"
  value       = { for k, v in datadog_team_permission_setting.team_permission_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_permission_settings_action" {
  description = "Map of action values across all team_permission_settings, keyed the same as var.team_permission_settings except keys with no action are omitted"
  value       = { for k, v in datadog_team_permission_setting.team_permission_settings : k => v.action if v.action != null && length(v.action) > 0 }
}
output "team_permission_settings_team_id" {
  description = "Map of team_id values across all team_permission_settings, keyed the same as var.team_permission_settings except keys with no team_id are omitted"
  value       = { for k, v in datadog_team_permission_setting.team_permission_settings : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}
output "team_permission_settings_value" {
  description = "Map of value values across all team_permission_settings, keyed the same as var.team_permission_settings except keys with no value are omitted"
  value       = { for k, v in datadog_team_permission_setting.team_permission_settings : k => v.value if v.value != null && length(v.value) > 0 }
}

