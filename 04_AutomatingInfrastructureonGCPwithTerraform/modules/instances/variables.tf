variable "region" {
  description = "The name of the region resource is being created"
  type        = string
  default     = "us-east1"
}
variable "zone" {
  description = "The name of the zone resource is being created"
  type        = string
  default     = "us-east1-c"
}
variable "project_id" {
  description = "The name of the project resource is being created"
  type        = string
  default     = "qwiklabs-gcp-00-54bea1c63d27"
}