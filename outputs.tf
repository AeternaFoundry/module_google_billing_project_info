output "billing_project_infos_id" {
  description = "Map of id values across all billing_project_infos, keyed the same as var.billing_project_infos except keys with no id are omitted"
  value       = { for k, v in google_billing_project_info.billing_project_infos : k => v.id if v.id != null && length(v.id) > 0 }
}
output "billing_project_infos_billing_account" {
  description = "Map of billing_account values across all billing_project_infos, keyed the same as var.billing_project_infos except keys with no billing_account are omitted"
  value       = { for k, v in google_billing_project_info.billing_project_infos : k => v.billing_account if v.billing_account != null && length(v.billing_account) > 0 }
}
output "billing_project_infos_deletion_policy" {
  description = "Map of deletion_policy values across all billing_project_infos, keyed the same as var.billing_project_infos except keys with no deletion_policy are omitted"
  value       = { for k, v in google_billing_project_info.billing_project_infos : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "billing_project_infos_project" {
  description = "Map of project values across all billing_project_infos, keyed the same as var.billing_project_infos except keys with no project are omitted"
  value       = { for k, v in google_billing_project_info.billing_project_infos : k => v.project if v.project != null && length(v.project) > 0 }
}

