provider "google" {
  project = "395010938272"
  region  = "us-central1"
}

resource "google_firestore_database" "default" {
  name        = "(default)"
  location_id = "nam5"
  type        = "FIRESTORE_NATIVE"

  lifecycle {
    prevent_destroy = true
  }
}