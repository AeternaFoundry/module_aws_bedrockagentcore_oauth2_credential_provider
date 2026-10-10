output "bedrockagentcore_oauth2_credential_providers_client_secret_arn" {
  description = "Map of client_secret_arn values across all bedrockagentcore_oauth2_credential_providers, keyed the same as var.bedrockagentcore_oauth2_credential_providers"
  value       = { for k, v in aws_bedrockagentcore_oauth2_credential_provider.bedrockagentcore_oauth2_credential_providers : k => v.client_secret_arn if v.client_secret_arn != null && length(v.client_secret_arn) > 0 }
}
output "bedrockagentcore_oauth2_credential_providers_credential_provider_arn" {
  description = "Map of credential_provider_arn values across all bedrockagentcore_oauth2_credential_providers, keyed the same as var.bedrockagentcore_oauth2_credential_providers"
  value       = { for k, v in aws_bedrockagentcore_oauth2_credential_provider.bedrockagentcore_oauth2_credential_providers : k => v.credential_provider_arn if v.credential_provider_arn != null && length(v.credential_provider_arn) > 0 }
}
output "bedrockagentcore_oauth2_credential_providers_credential_provider_vendor" {
  description = "Map of credential_provider_vendor values across all bedrockagentcore_oauth2_credential_providers, keyed the same as var.bedrockagentcore_oauth2_credential_providers"
  value       = { for k, v in aws_bedrockagentcore_oauth2_credential_provider.bedrockagentcore_oauth2_credential_providers : k => v.credential_provider_vendor if v.credential_provider_vendor != null && length(v.credential_provider_vendor) > 0 }
}
output "bedrockagentcore_oauth2_credential_providers_name" {
  description = "Map of name values across all bedrockagentcore_oauth2_credential_providers, keyed the same as var.bedrockagentcore_oauth2_credential_providers"
  value       = { for k, v in aws_bedrockagentcore_oauth2_credential_provider.bedrockagentcore_oauth2_credential_providers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrockagentcore_oauth2_credential_providers_oauth2_provider_config" {
  description = "Map of oauth2_provider_config values across all bedrockagentcore_oauth2_credential_providers, keyed the same as var.bedrockagentcore_oauth2_credential_providers"
  value       = { for k, v in aws_bedrockagentcore_oauth2_credential_provider.bedrockagentcore_oauth2_credential_providers : k => v.oauth2_provider_config if v.oauth2_provider_config != null && length(v.oauth2_provider_config) > 0 }
  sensitive   = true
}
output "bedrockagentcore_oauth2_credential_providers_region" {
  description = "Map of region values across all bedrockagentcore_oauth2_credential_providers, keyed the same as var.bedrockagentcore_oauth2_credential_providers"
  value       = { for k, v in aws_bedrockagentcore_oauth2_credential_provider.bedrockagentcore_oauth2_credential_providers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagentcore_oauth2_credential_providers_tags" {
  description = "Map of tags values across all bedrockagentcore_oauth2_credential_providers, keyed the same as var.bedrockagentcore_oauth2_credential_providers"
  value       = { for k, v in aws_bedrockagentcore_oauth2_credential_provider.bedrockagentcore_oauth2_credential_providers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bedrockagentcore_oauth2_credential_providers_tags_all" {
  description = "Map of tags_all values across all bedrockagentcore_oauth2_credential_providers, keyed the same as var.bedrockagentcore_oauth2_credential_providers"
  value       = { for k, v in aws_bedrockagentcore_oauth2_credential_provider.bedrockagentcore_oauth2_credential_providers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

