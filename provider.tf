# Provider configuration: https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraformproviderconfiguration.htm
# When used with resource manager only region is needed in the provider configuration.
provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  user_ocid    = var.user_ocid
  region       = var.region
  private_key  = var.oci_key
  fingerprint  = var.oci_key_fingerprint
}
