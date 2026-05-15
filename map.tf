resource"azurerm_resource_group" "maps" {
    for_each = tomap (var.rosni)
  name = each.key
  location =each.value
}
variable "rosni" {}


