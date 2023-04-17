variable "tenancy_ocid" {
  type        = string
  description = "OCI tenancy identifier."
  sensitive   = true
}

variable "user_ocid" {
  type        = string
  description = "OCI user identifier."
  sensitive   = true
}

variable "oci_key" {
  type        = string
  description = "OCI private SSH key."
  sensitive   = true
}

variable "oci_key_fingerprint" {
  type        = string
  description = "OCI key SSH key fingerprint."
}

variable "region" {
  type        = string
  description = "OCI region my resources will be created."
  default     = "eu-frankfurt-1"
}
