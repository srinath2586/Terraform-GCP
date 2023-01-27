terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.50.0"
    }
  }
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-east4-c"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
//  scratch_disk {
 //   interface = "SCSI"
 // }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}
