resource "oci_core_instance" "ol8free" {
  display_name = "iadol81"
  #name           = "iadol81"
  compartment_id      = var.compartment_id
  availability_domain = "IAD-AD-1"
  #desired_state = enabled  
  source_details {
    source_id   = "ocid1.image.oc1.iad.aaaaaaaa4m3bxzwpfcrthy3x74rozkmsxpnru4zcmlmta3yehg3rptvui7jq"
    source_type = "image"
    boot_volume_size_in_gbs = 50
  }
  shape = "VM.Standard.E2.1.Micro"

  create_vnic_details {
     assign_private_dns_record = 
     assign_public_ip          = 
     defined_tags              = 
     display_name              = 
     freeform_tags             = 
     hostname_label            = 
     nsg_ids                   = 
     private_ip                = 
     skip_source_dest_check    = 
     subnet_id                 = 
     vlan_id                   = 
        }
}

