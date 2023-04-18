terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "ocelka"

    workspaces {
      prefix = "oci-"
    }
  }
}
