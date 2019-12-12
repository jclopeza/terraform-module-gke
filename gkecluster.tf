resource "google_container_cluster" "gke-cluster" {
  name = "${var.cluster_name}"
  network = "default"
  location = "europe-west3-a"
  initial_node_count = "${var.number_of_nodes}"
  master_auth {
    client_certificate_config {
      issue_client_certificate = true
    }
  }
}