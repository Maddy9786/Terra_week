module "prac_rg" {
  source = "../../module/azure_resource_group"
  rgs    = var.rgs
}


module "storage_account" {
  depends_on = [module.prac_rg]
  source     = "../../module/azure_storage_account"
  sa         = var.sa
}