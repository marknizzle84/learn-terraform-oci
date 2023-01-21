resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = var.compartment_id
  display_name   = "${var.vcn_displayname_prefix} production VCN"
}

resource "oci_core_vcn" "internal-test" {
  dns_label      = "testing"
  cidr_block     = "172.16.16.0/20"
  compartment_id = var.compartment_id
  display_name   = "${var.vcn_displayname_prefix} testing VCN"
}