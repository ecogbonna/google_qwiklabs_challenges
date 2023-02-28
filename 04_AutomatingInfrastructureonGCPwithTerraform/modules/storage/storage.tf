resource "google_storage_bucket" "bucket-for-state" {
  name        				  = "tf-bucket-837512"
  location    				  = "US"
  force_destroy 			  = true
  uniform_bucket_level_access = true
}