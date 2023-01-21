terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
  backend "s3" {
    bucket                      = "terraform-ashburn"
    key                         = "vcn/terraform.tfstate"
    region                      = "us-ashburn-1"
    endpoint                    = "https://idhpsc1eth7t.compat.objectstorage.us-ashburn-1.oraclecloud.com"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}

provider "oci" {
  region = var.oci_region
}