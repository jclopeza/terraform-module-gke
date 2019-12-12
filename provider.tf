provider "google" {
  credentials = "${file("/opt/gke-service-account/serviceaccount.json")}"
  project     = "lyhsoft-261709"
  region      = "europe-west3"
}