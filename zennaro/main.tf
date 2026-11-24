terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.12.0"
    }
  }
}

provider "google" {
  #credentials = file("exalted-pattern-424313-j3-8da7ac115860.json")
  project = "exalted-pattern-424313-j3"
  #region      = "europe-west1"

}

resource "google_compute_instance" "vm_zennaro" {
  name         = "vm-zennaro-1"
  machine_type = "e2-micro"
  zone         = "europe-west1-b"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}