provider "google" {
  project = "395010938272"
  region  = "us-central1"
}

resource "google_firestore_database" "database" {
  project     = "opentofu-test-project"
  name        = "(default)"
  location_id = "us-central1"
  type        = "FIRESTORE_NATIVE"
}