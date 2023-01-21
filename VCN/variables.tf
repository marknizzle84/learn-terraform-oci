output "vcn_prod_cidr_info" {
  value = oci_core_vcn.internal.cidr_block
}
output "vcn_test_cidr_info" {
  value = oci_core_vcn.internal-test.cidr_block
}