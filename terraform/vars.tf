variable "cluster_name" {
  description = "Cluster name"
  type = string
  default = "test-kind"
}
variable "cluster_node_image" {
  description = "Cluster node_image"
  type = string
  default = "kindest/node:v1.34.0"
}
variable "kube_config_path" {
  description = "Cluster node_image"
  type = string
  default = ("/tmp/config")
}
variable "kind_api_version" {
  description = "Cluster node_image"
  type = string
  default = "kind.x-k8s.io/v1alpha4"
}