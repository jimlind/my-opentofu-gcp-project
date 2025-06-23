provider "google" {
  project = "395010938272"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_disk" "example_disk" {
  name  = "example-disk"
  type  = "pd-standard"
  zone  = "us-central1-a"
  size  = 10
}
