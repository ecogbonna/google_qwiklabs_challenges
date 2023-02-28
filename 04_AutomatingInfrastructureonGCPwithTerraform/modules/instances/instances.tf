resource "google_compute_instance" "vm_instance_1" {
  name         = "tf-instance-1"
  machine_type = "n1-standard-2"
  boot_disk {
    initialize_params {
      image = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-10-buster-v20230206"
    }
  }
  network_interface {
    network = "tf-vpc-905033"
	subnetwork = "subnet-01"
    access_config {
    }
  }
  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}
resource "google_compute_instance" "vm_instance_2" {
  name         = "tf-instance-2"
  machine_type = "n1-standard-2"
  boot_disk {
    initialize_params {
      image = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-10-buster-v20230206"
    }
  }
  network_interface {
    network = "tf-vpc-905033"
	subnetwork = "subnet-02"
    access_config {
    }
  }
  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}
