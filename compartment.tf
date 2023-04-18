# I want to remove workspace prefix as this is only used to distinguish TF state files in TF cloud.
locals {
  ws = replace(terraform.workspace, "oci-", "")
}

# Create new compartment where resources will be groupped. This is a top level compartment.
resource "oci_identity_compartment" "l1_comp" {
  # Required
  compartment_id = var.tenancy_ocid
  description    = "In this compartment are resources for ${local.ws} environment."
  name           = local.ws

  # Optional
  freeform_tags = { "environment" = "${local.ws}" }
}
