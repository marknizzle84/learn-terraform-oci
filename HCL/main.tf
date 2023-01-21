terraform {
  required_version = ">=1.3.7"
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
  backend "http" {
    address       = "https://objectstorage.us-ashburn-1.oraclecloud.com/p/fw9s3EECU193SfQY2bV_X9xnT6YpM_0WA6CE-LMXLh31TN66E0QmKysaF2k352Gr/n/idhpsc1eth7t/b/terraform-ashburn/o/hcl/terraform.tfstate"
    update_method = "PUT"
  }
}

provider "oci" {
  region              = "us-ashburn-1"
  auth                = "SecurityToken"
  config_file_profile = "learn-terraform"
}