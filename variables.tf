variable "bedrockagentcore_oauth2_credential_providers" {
  description = <<EOT
Map of bedrockagentcore_oauth2_credential_providers, attributes below
Required:
    - credential_provider_vendor
    - name
Optional:
    - region
    - tags
    - oauth2_provider_config (block):
        - custom_oauth2_provider_config (optional, block):
            - client_credentials_wo_version (optional)
            - client_id (optional)
            - client_id_wo (optional)
            - client_secret (optional)
            - client_secret_wo (optional)
            - oauth_discovery (optional, block):
                - authorization_server_metadata (optional, block):
                    - authorization_endpoint (required)
                    - issuer (required)
                    - response_types (optional)
                    - token_endpoint (required)
                - discovery_url (optional)
        - github_oauth2_provider_config (optional, block):
            - client_credentials_wo_version (optional)
            - client_id (optional)
            - client_id_wo (optional)
            - client_secret (optional)
            - client_secret_wo (optional)
        - google_oauth2_provider_config (optional, block):
            - client_credentials_wo_version (optional)
            - client_id (optional)
            - client_id_wo (optional)
            - client_secret (optional)
            - client_secret_wo (optional)
        - microsoft_oauth2_provider_config (optional, block):
            - client_credentials_wo_version (optional)
            - client_id (optional)
            - client_id_wo (optional)
            - client_secret (optional)
            - client_secret_wo (optional)
        - salesforce_oauth2_provider_config (optional, block):
            - client_credentials_wo_version (optional)
            - client_id (optional)
            - client_id_wo (optional)
            - client_secret (optional)
            - client_secret_wo (optional)
        - slack_oauth2_provider_config (optional, block):
            - client_credentials_wo_version (optional)
            - client_id (optional)
            - client_id_wo (optional)
            - client_secret (optional)
            - client_secret_wo (optional)
EOT

  type = map(object({
    credential_provider_vendor = string
    name                       = string
    region                     = optional(string)
    tags                       = optional(map(string))
    oauth2_provider_config = optional(list(object({
      custom_oauth2_provider_config = optional(list(object({
        client_credentials_wo_version = optional(number)
        client_id                     = optional(string)
        client_id_wo                  = optional(string)
        client_secret                 = optional(string)
        client_secret_wo              = optional(string)
        oauth_discovery = optional(list(object({
          authorization_server_metadata = optional(list(object({
            authorization_endpoint = string
            issuer                 = string
            response_types         = optional(set(string))
            token_endpoint         = string
          })))
          discovery_url = optional(string)
        })))
      })))
      github_oauth2_provider_config = optional(list(object({
        client_credentials_wo_version = optional(number)
        client_id                     = optional(string)
        client_id_wo                  = optional(string)
        client_secret                 = optional(string)
        client_secret_wo              = optional(string)
      })))
      google_oauth2_provider_config = optional(list(object({
        client_credentials_wo_version = optional(number)
        client_id                     = optional(string)
        client_id_wo                  = optional(string)
        client_secret                 = optional(string)
        client_secret_wo              = optional(string)
      })))
      microsoft_oauth2_provider_config = optional(list(object({
        client_credentials_wo_version = optional(number)
        client_id                     = optional(string)
        client_id_wo                  = optional(string)
        client_secret                 = optional(string)
        client_secret_wo              = optional(string)
      })))
      salesforce_oauth2_provider_config = optional(list(object({
        client_credentials_wo_version = optional(number)
        client_id                     = optional(string)
        client_id_wo                  = optional(string)
        client_secret                 = optional(string)
        client_secret_wo              = optional(string)
      })))
      slack_oauth2_provider_config = optional(list(object({
        client_credentials_wo_version = optional(number)
        client_id                     = optional(string)
        client_id_wo                  = optional(string)
        client_secret                 = optional(string)
        client_secret_wo              = optional(string)
      })))
    })))
  }))
}

