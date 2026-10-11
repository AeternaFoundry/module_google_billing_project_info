resource "google_billing_project_info" "billing_project_infos" {
  for_each = var.billing_project_infos

  billing_account = each.value.billing_account
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

