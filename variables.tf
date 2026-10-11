variable "team_permission_settings" {
  description = <<EOT
Map of team_permission_settings, attributes below
Required:
    - action
    - team_id
    - value
EOT

  type = map(object({
    action  = string
    team_id = string
    value   = string
  }))
}

