provider "google" {
  project = "395010938272"
  region  = "us-central1"
}

resource "google_firestore_database" "default" {
  name     = "(default)"
  location = "nam5"
  type     = "NATIVE"

  lifecycle {
    prevent_destroy = true
  }
}