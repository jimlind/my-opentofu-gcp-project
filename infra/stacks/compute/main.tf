provider "google" {
  project = "395010938272"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "instances" {
  name         = "vm-a"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}