resource "datadog_team_permission_setting" "team_permission_settings" {
  for_each = var.team_permission_settings

  action  = each.value.action
  team_id = each.value.team_id
  value   = each.value.value
}

