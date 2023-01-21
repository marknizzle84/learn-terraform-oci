terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
  backend "http" {
    address        = "https://objectstorage.us-ashburn-1.oraclecloud.com/p/fw9s3EECU193SfQY2bV_X9xnT6YpM_0WA6CE-LMXLh31TN66E0QmKysaF2k352Gr/n/idhpsc1eth7t/b/terraform-ashburn/o/terraform.tfstate"
    #lock_address   = "https://objectstorage.us-ashburn-1.oraclecloud.com/p/fw9s3EECU193SfQY2bV_X9xnT6YpM_0WA6CE-LMXLh31TN66E0QmKysaF2k352Gr/n/idhpsc1eth7t/b/terraform-ashburn/o/.terraform.lock.hcl"
    #unlock_address = "https://objectstorage.us-ashburn-1.oraclecloud.com/p/fw9s3EECU193SfQY2bV_X9xnT6YpM_0WA6CE-LMXLh31TN66E0QmKysaF2k352Gr/n/idhpsc1eth7t/b/terraform-ashburn/o//.terraform.lock.hcl"
    update_method  = "PUT"
  }
}

provider "oci" {
  region              = "us-ashburn-1"
  auth                = "SecurityToken"
  config_file_profile = "learn-terraform"
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