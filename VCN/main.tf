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
  region              = "us-ashburn-1"
  auth                = "APIKey"
  config_file_profile = "DEFAULT"
}

resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaay7axxquulavcanae6lpym5ruwwmgax3sgb6slmpzh4d5lfkwtepa"
  display_name   = "My internal VCN"
}

resource "oci_core_vcn" "internal-test" {
  dns_label      = "testing"
  cidr_block     = "172.16.16.0/20"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaay7axxquulavcanae6lpym5ruwwmgax3sgb6slmpzh4d5lfkwtepa"
  display_name   = "My internal testing VCN"
}