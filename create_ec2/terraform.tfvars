storage_types {
  ebs_volume   = "gp2"
  root_volume  = "standard"
}

storage_sizes {
  ebs_volume   = 100
  root_volume  = 20
}

availability_zone = "ap-southeast-1a"
instance_type = "c5.large"
