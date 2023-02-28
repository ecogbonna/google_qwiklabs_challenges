output "instance_id_1" {
  description = "Instance ID of vm_instance_1"
  value       = google_compute_instance.vm_instance_1.instance_id
}
output "instance_id_2" {
  description = "Instance ID of vm_instance_2"
  value       = google_compute_instance.vm_instance_2.instance_id
}
output "instance_identifier_1" {
  description = "ID of vm_instance_1"
  value       = google_compute_instance.vm_instance_1.id
}
output "instance_identifier_2" {
  description = "ID of vm_instance_2"
  value       = google_compute_instance.vm_instance_2.id
}