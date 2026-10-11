output "saml_clients_id" {
  description = "Map of id values across all saml_clients, keyed the same as var.saml_clients except keys with no id are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.id if v.id != null && length(v.id) > 0 }
}
output "saml_clients_always_display_in_console" {
  description = "Map of always_display_in_console values across all saml_clients, keyed the same as var.saml_clients except keys with no always_display_in_console are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.always_display_in_console if v.always_display_in_console != null }
}
output "saml_clients_assertion_consumer_post_url" {
  description = "Map of assertion_consumer_post_url values across all saml_clients, keyed the same as var.saml_clients except keys with no assertion_consumer_post_url are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.assertion_consumer_post_url if v.assertion_consumer_post_url != null && length(v.assertion_consumer_post_url) > 0 }
}
output "saml_clients_assertion_consumer_redirect_url" {
  description = "Map of assertion_consumer_redirect_url values across all saml_clients, keyed the same as var.saml_clients except keys with no assertion_consumer_redirect_url are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.assertion_consumer_redirect_url if v.assertion_consumer_redirect_url != null && length(v.assertion_consumer_redirect_url) > 0 }
}
output "saml_clients_authentication_flow_binding_overrides" {
  description = "Map of authentication_flow_binding_overrides values across all saml_clients, keyed the same as var.saml_clients except keys with no authentication_flow_binding_overrides are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => one(v.authentication_flow_binding_overrides) if v.authentication_flow_binding_overrides != null && length(v.authentication_flow_binding_overrides) > 0 }
}
output "saml_clients_base_url" {
  description = "Map of base_url values across all saml_clients, keyed the same as var.saml_clients except keys with no base_url are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.base_url if v.base_url != null && length(v.base_url) > 0 }
}
output "saml_clients_canonicalization_method" {
  description = "Map of canonicalization_method values across all saml_clients, keyed the same as var.saml_clients except keys with no canonicalization_method are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.canonicalization_method if v.canonicalization_method != null && length(v.canonicalization_method) > 0 }
}
output "saml_clients_client_id" {
  description = "Map of client_id values across all saml_clients, keyed the same as var.saml_clients except keys with no client_id are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "saml_clients_client_signature_required" {
  description = "Map of client_signature_required values across all saml_clients, keyed the same as var.saml_clients except keys with no client_signature_required are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.client_signature_required if v.client_signature_required != null }
}
output "saml_clients_consent_required" {
  description = "Map of consent_required values across all saml_clients, keyed the same as var.saml_clients except keys with no consent_required are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.consent_required if v.consent_required != null }
}
output "saml_clients_description" {
  description = "Map of description values across all saml_clients, keyed the same as var.saml_clients except keys with no description are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.description if v.description != null && length(v.description) > 0 }
}
output "saml_clients_enabled" {
  description = "Map of enabled values across all saml_clients, keyed the same as var.saml_clients except keys with no enabled are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.enabled if v.enabled != null }
}
output "saml_clients_encrypt_assertions" {
  description = "Map of encrypt_assertions values across all saml_clients, keyed the same as var.saml_clients except keys with no encrypt_assertions are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.encrypt_assertions if v.encrypt_assertions != null }
}
output "saml_clients_encryption_algorithm" {
  description = "Map of encryption_algorithm values across all saml_clients, keyed the same as var.saml_clients except keys with no encryption_algorithm are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.encryption_algorithm if v.encryption_algorithm != null && length(v.encryption_algorithm) > 0 }
}
output "saml_clients_encryption_certificate" {
  description = "Map of encryption_certificate values across all saml_clients, keyed the same as var.saml_clients except keys with no encryption_certificate are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.encryption_certificate if v.encryption_certificate != null && length(v.encryption_certificate) > 0 }
}
output "saml_clients_encryption_certificate_sha1" {
  description = "Map of encryption_certificate_sha1 values across all saml_clients, keyed the same as var.saml_clients except keys with no encryption_certificate_sha1 are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.encryption_certificate_sha1 if v.encryption_certificate_sha1 != null && length(v.encryption_certificate_sha1) > 0 }
}
output "saml_clients_encryption_digest_method" {
  description = "Map of encryption_digest_method values across all saml_clients, keyed the same as var.saml_clients except keys with no encryption_digest_method are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.encryption_digest_method if v.encryption_digest_method != null && length(v.encryption_digest_method) > 0 }
}
output "saml_clients_encryption_key_algorithm" {
  description = "Map of encryption_key_algorithm values across all saml_clients, keyed the same as var.saml_clients except keys with no encryption_key_algorithm are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.encryption_key_algorithm if v.encryption_key_algorithm != null && length(v.encryption_key_algorithm) > 0 }
}
output "saml_clients_encryption_mask_generation_function" {
  description = "Map of encryption_mask_generation_function values across all saml_clients, keyed the same as var.saml_clients except keys with no encryption_mask_generation_function are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.encryption_mask_generation_function if v.encryption_mask_generation_function != null && length(v.encryption_mask_generation_function) > 0 }
}
output "saml_clients_extra_config" {
  description = "Map of extra_config values across all saml_clients, keyed the same as var.saml_clients except keys with no extra_config are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.extra_config if v.extra_config != null && length(v.extra_config) > 0 }
}
output "saml_clients_force_name_id_format" {
  description = "Map of force_name_id_format values across all saml_clients, keyed the same as var.saml_clients except keys with no force_name_id_format are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.force_name_id_format if v.force_name_id_format != null }
}
output "saml_clients_force_post_binding" {
  description = "Map of force_post_binding values across all saml_clients, keyed the same as var.saml_clients except keys with no force_post_binding are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.force_post_binding if v.force_post_binding != null }
}
output "saml_clients_front_channel_logout" {
  description = "Map of front_channel_logout values across all saml_clients, keyed the same as var.saml_clients except keys with no front_channel_logout are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.front_channel_logout if v.front_channel_logout != null }
}
output "saml_clients_full_scope_allowed" {
  description = "Map of full_scope_allowed values across all saml_clients, keyed the same as var.saml_clients except keys with no full_scope_allowed are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.full_scope_allowed if v.full_scope_allowed != null }
}
output "saml_clients_idp_initiated_sso_relay_state" {
  description = "Map of idp_initiated_sso_relay_state values across all saml_clients, keyed the same as var.saml_clients except keys with no idp_initiated_sso_relay_state are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.idp_initiated_sso_relay_state if v.idp_initiated_sso_relay_state != null && length(v.idp_initiated_sso_relay_state) > 0 }
}
output "saml_clients_idp_initiated_sso_url_name" {
  description = "Map of idp_initiated_sso_url_name values across all saml_clients, keyed the same as var.saml_clients except keys with no idp_initiated_sso_url_name are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.idp_initiated_sso_url_name if v.idp_initiated_sso_url_name != null && length(v.idp_initiated_sso_url_name) > 0 }
}
output "saml_clients_include_authn_statement" {
  description = "Map of include_authn_statement values across all saml_clients, keyed the same as var.saml_clients except keys with no include_authn_statement are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.include_authn_statement if v.include_authn_statement != null }
}
output "saml_clients_login_theme" {
  description = "Map of login_theme values across all saml_clients, keyed the same as var.saml_clients except keys with no login_theme are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.login_theme if v.login_theme != null && length(v.login_theme) > 0 }
}
output "saml_clients_logout_service_post_binding_url" {
  description = "Map of logout_service_post_binding_url values across all saml_clients, keyed the same as var.saml_clients except keys with no logout_service_post_binding_url are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.logout_service_post_binding_url if v.logout_service_post_binding_url != null && length(v.logout_service_post_binding_url) > 0 }
}
output "saml_clients_logout_service_redirect_binding_url" {
  description = "Map of logout_service_redirect_binding_url values across all saml_clients, keyed the same as var.saml_clients except keys with no logout_service_redirect_binding_url are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.logout_service_redirect_binding_url if v.logout_service_redirect_binding_url != null && length(v.logout_service_redirect_binding_url) > 0 }
}
output "saml_clients_master_saml_processing_url" {
  description = "Map of master_saml_processing_url values across all saml_clients, keyed the same as var.saml_clients except keys with no master_saml_processing_url are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.master_saml_processing_url if v.master_saml_processing_url != null && length(v.master_saml_processing_url) > 0 }
}
output "saml_clients_name" {
  description = "Map of name values across all saml_clients, keyed the same as var.saml_clients except keys with no name are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.name if v.name != null && length(v.name) > 0 }
}
output "saml_clients_name_id_format" {
  description = "Map of name_id_format values across all saml_clients, keyed the same as var.saml_clients except keys with no name_id_format are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.name_id_format if v.name_id_format != null && length(v.name_id_format) > 0 }
}
output "saml_clients_realm_id" {
  description = "Map of realm_id values across all saml_clients, keyed the same as var.saml_clients except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}
output "saml_clients_root_url" {
  description = "Map of root_url values across all saml_clients, keyed the same as var.saml_clients except keys with no root_url are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.root_url if v.root_url != null && length(v.root_url) > 0 }
}
output "saml_clients_sign_assertions" {
  description = "Map of sign_assertions values across all saml_clients, keyed the same as var.saml_clients except keys with no sign_assertions are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.sign_assertions if v.sign_assertions != null }
}
output "saml_clients_sign_documents" {
  description = "Map of sign_documents values across all saml_clients, keyed the same as var.saml_clients except keys with no sign_documents are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.sign_documents if v.sign_documents != null }
}
output "saml_clients_signature_algorithm" {
  description = "Map of signature_algorithm values across all saml_clients, keyed the same as var.saml_clients except keys with no signature_algorithm are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.signature_algorithm if v.signature_algorithm != null && length(v.signature_algorithm) > 0 }
}
output "saml_clients_signature_key_name" {
  description = "Map of signature_key_name values across all saml_clients, keyed the same as var.saml_clients except keys with no signature_key_name are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.signature_key_name if v.signature_key_name != null && length(v.signature_key_name) > 0 }
}
output "saml_clients_signing_certificate" {
  description = "Map of signing_certificate values across all saml_clients, keyed the same as var.saml_clients except keys with no signing_certificate are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.signing_certificate if v.signing_certificate != null && length(v.signing_certificate) > 0 }
}
output "saml_clients_signing_certificate_sha1" {
  description = "Map of signing_certificate_sha1 values across all saml_clients, keyed the same as var.saml_clients except keys with no signing_certificate_sha1 are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.signing_certificate_sha1 if v.signing_certificate_sha1 != null && length(v.signing_certificate_sha1) > 0 }
}
output "saml_clients_signing_private_key" {
  description = "Map of signing_private_key values across all saml_clients, keyed the same as var.saml_clients except keys with no signing_private_key are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.signing_private_key if v.signing_private_key != null && length(v.signing_private_key) > 0 }
  sensitive   = true
}
output "saml_clients_signing_private_key_sha1" {
  description = "Map of signing_private_key_sha1 values across all saml_clients, keyed the same as var.saml_clients except keys with no signing_private_key_sha1 are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.signing_private_key_sha1 if v.signing_private_key_sha1 != null && length(v.signing_private_key_sha1) > 0 }
}
output "saml_clients_valid_redirect_uris" {
  description = "Map of valid_redirect_uris values across all saml_clients, keyed the same as var.saml_clients except keys with no valid_redirect_uris are omitted"
  value       = { for k, v in keycloak_saml_client.saml_clients : k => v.valid_redirect_uris if v.valid_redirect_uris != null && length(v.valid_redirect_uris) > 0 }
}

