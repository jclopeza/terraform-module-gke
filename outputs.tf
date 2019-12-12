output "cluster_endpoint" {
  description = "The IP address of the cluster master."
  value = "${google_container_cluster.gke-cluster.endpoint}"
}

output "client_certificate" {
  description = "Public certificate used by clients to authenticate to the cluster endpoint."
  value = "${google_container_cluster.gke-cluster.master_auth.0.client_certificate}"
}

output "client_key" {
  description = "Private key used by clients to authenticate to the cluster endpoint."
  value = "${google_container_cluster.gke-cluster.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  description = "The public certificate that is the root of trust for the cluster."
  value = "${google_container_cluster.gke-cluster.master_auth.0.cluster_ca_certificate}"
}