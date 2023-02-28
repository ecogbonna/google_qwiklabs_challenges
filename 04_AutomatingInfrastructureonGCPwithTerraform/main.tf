terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
  backend "gcs" {
    bucket  = "tf-bucket-837512"
    prefix  = "terraform/state"
  }
}
provider "google" {
  project     = var.project_id
  region      = var.region
  zone		  = var.zone
}
module "instances" {
  source = "./modules/instances"
}
module "storage" {
  source = "./modules/storage"
}
module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 6.0"

    project_id   = var.project_id
    network_name = "tf-vpc-905033"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-east1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-east1"
        }
    ]
}
resource "google_compute_firewall" "tf-firewall" {
  name    = "tf-firewall"
  network = "projects/qwiklabs-gcp-00-54bea1c63d27/global/networks/tf-vpc-905033"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}