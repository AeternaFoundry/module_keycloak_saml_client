variable "saml_clients" {
  description = <<EOT
Map of saml_clients, attributes below
Required:
    - client_id
    - realm_id
Optional:
    - always_display_in_console
    - assertion_consumer_post_url
    - assertion_consumer_redirect_url
    - base_url
    - canonicalization_method
    - client_signature_required
    - consent_required
    - description
    - enabled
    - encrypt_assertions
    - encryption_algorithm
    - encryption_certificate
    - encryption_digest_method
    - encryption_key_algorithm
    - encryption_mask_generation_function
    - extra_config
    - force_name_id_format
    - force_post_binding
    - front_channel_logout
    - full_scope_allowed
    - idp_initiated_sso_relay_state
    - idp_initiated_sso_url_name
    - include_authn_statement
    - login_theme
    - logout_service_post_binding_url
    - logout_service_redirect_binding_url
    - master_saml_processing_url
    - name
    - name_id_format
    - root_url
    - sign_assertions
    - sign_documents
    - signature_algorithm
    - signature_key_name
    - signing_certificate
    - signing_private_key
    - valid_redirect_uris
    - authentication_flow_binding_overrides (block):
        - browser_id (optional)
        - direct_grant_id (optional)
EOT

  type = map(object({
    client_id                           = string
    realm_id                            = string
    always_display_in_console           = optional(bool)
    assertion_consumer_post_url         = optional(string)
    assertion_consumer_redirect_url     = optional(string)
    base_url                            = optional(string)
    canonicalization_method             = optional(string)
    client_signature_required           = optional(bool)
    consent_required                    = optional(bool)
    description                         = optional(string)
    enabled                             = optional(bool)
    encrypt_assertions                  = optional(bool)
    encryption_algorithm                = optional(string)
    encryption_certificate              = optional(string)
    encryption_digest_method            = optional(string)
    encryption_key_algorithm            = optional(string)
    encryption_mask_generation_function = optional(string)
    extra_config                        = optional(map(string))
    force_name_id_format                = optional(bool)
    force_post_binding                  = optional(bool)
    front_channel_logout                = optional(bool)
    full_scope_allowed                  = optional(bool)
    idp_initiated_sso_relay_state       = optional(string)
    idp_initiated_sso_url_name          = optional(string)
    include_authn_statement             = optional(bool)
    login_theme                         = optional(string)
    logout_service_post_binding_url     = optional(string)
    logout_service_redirect_binding_url = optional(string)
    master_saml_processing_url          = optional(string)
    name                                = optional(string)
    name_id_format                      = optional(string)
    root_url                            = optional(string)
    sign_assertions                     = optional(bool)
    sign_documents                      = optional(bool)
    signature_algorithm                 = optional(string)
    signature_key_name                  = optional(string)
    signing_certificate                 = optional(string)
    signing_private_key                 = optional(string)
    valid_redirect_uris                 = optional(set(string))
    authentication_flow_binding_overrides = optional(object({
      browser_id      = optional(string)
      direct_grant_id = optional(string)
    }))
  }))
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

