resource "keycloak_saml_client" "saml_clients" {
  for_each = var.saml_clients

  client_id                           = each.value.client_id
  realm_id                            = each.value.realm_id
  always_display_in_console           = each.value.always_display_in_console
  assertion_consumer_post_url         = each.value.assertion_consumer_post_url
  assertion_consumer_redirect_url     = each.value.assertion_consumer_redirect_url
  base_url                            = each.value.base_url
  canonicalization_method             = each.value.canonicalization_method
  client_signature_required           = each.value.client_signature_required
  consent_required                    = each.value.consent_required
  description                         = each.value.description
  enabled                             = each.value.enabled
  encrypt_assertions                  = each.value.encrypt_assertions
  encryption_algorithm                = each.value.encryption_algorithm
  encryption_certificate              = each.value.encryption_certificate
  encryption_digest_method            = each.value.encryption_digest_method
  encryption_key_algorithm            = each.value.encryption_key_algorithm
  encryption_mask_generation_function = each.value.encryption_mask_generation_function
  extra_config                        = each.value.extra_config
  force_name_id_format                = each.value.force_name_id_format
  force_post_binding                  = each.value.force_post_binding
  front_channel_logout                = each.value.front_channel_logout
  full_scope_allowed                  = each.value.full_scope_allowed
  idp_initiated_sso_relay_state       = each.value.idp_initiated_sso_relay_state
  idp_initiated_sso_url_name          = each.value.idp_initiated_sso_url_name
  include_authn_statement             = each.value.include_authn_statement
  login_theme                         = each.value.login_theme
  logout_service_post_binding_url     = each.value.logout_service_post_binding_url
  logout_service_redirect_binding_url = each.value.logout_service_redirect_binding_url
  master_saml_processing_url          = each.value.master_saml_processing_url
  name                                = each.value.name
  name_id_format                      = each.value.name_id_format
  root_url                            = each.value.root_url
  sign_assertions                     = each.value.sign_assertions
  sign_documents                      = each.value.sign_documents
  signature_algorithm                 = each.value.signature_algorithm
  signature_key_name                  = each.value.signature_key_name
  signing_certificate                 = each.value.signing_certificate
  signing_private_key                 = each.value.signing_private_key
  valid_redirect_uris                 = each.value.valid_redirect_uris

  dynamic "authentication_flow_binding_overrides" {
    for_each = each.value.authentication_flow_binding_overrides != null ? [each.value.authentication_flow_binding_overrides] : []
    content {
      browser_id      = authentication_flow_binding_overrides.value.browser_id
      direct_grant_id = authentication_flow_binding_overrides.value.direct_grant_id
    }
  }
}

