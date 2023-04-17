# I want to remove workspace prefix as this is only used to distinguish TF state files in TF cloud.
locals {
  ws = replace(terraform.workspace, "oci-", "")
}

# Create new compartment where resources will be groupped.
resource "oci_identity_compartment" "comp" {
  # Required
  compartment_id = var.tenancy_ocid
  description    = "In this compartment are resources for ${local.ws} environment."
  name           = local.ws

  # Optional
  freeform_tags = { "environment" = "${local.ws}" }
}
