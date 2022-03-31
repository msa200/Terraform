module "network" {
  source = "./network"
  cidr = var.cidr
  name_vpc = var.name_vpc
  pub_subnet1_cidr = var.pub_subnet1_cidr
  pub_subnet2_cidr = var.pub_subnet2_cidr
  private_subnet1_cidr = var.private_subnet1_cidr
  private_subnet2_cidr = var.private_subnet2_cidr
  availability_zone_A = var.availability_zone_A
  availability_zone_B = var.availability_zone_B
}
