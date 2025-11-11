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
variable "github_org" {
  description = "github_org"
  type = string
}
variable "github_token" {
  description = "github_token"
  type = string
}
variable "github_repo_name" {
  description = "github_repo"
  type = string
}

# Flux bootstrap settings
variable "git_branch" { 
  type = string
  default = "main" 
}
variable "flux_namespace" {
  type = string
  default = "flux-system" 
  }
variable "flux_path" {
  type = string
  default = "../clusters/local"
  }
variable "git_known_hosts" {
  type = string
  default = ""
  }
