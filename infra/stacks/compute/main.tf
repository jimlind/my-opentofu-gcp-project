provider "google" {
  project = "395010938272"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_disk" "disks" {
  for_each = toset(["disk-a", "disk-b"])

  name  = each.key
  type  = "pd-standard"
  zone  = "us-central1-a"
  size  = 10
}

resource "google_compute_instance" "instances" {
  for_each = toset(["vm-a", "vm-b"])

  name         = each.key
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