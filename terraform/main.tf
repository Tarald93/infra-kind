resource "kind_cluster" "default" {
    name            = var.cluster_name
    node_image      = var.cluster_node_image
    kubeconfig_path = pathexpand("${var.kube_config_path}")
    wait_for_ready  = true

    kind_config {
      kind        = "Cluster"
      api_version = var.kind_api_version
    
    node {
          role = "control-plane"

          kubeadm_config_patches = [
              "kind: InitConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"ingress-ready=true\"\n"
          ]

          extra_port_mappings {
              container_port = 80
              host_port      = 80
          }
          extra_port_mappings {
              container_port = 443
              host_port      = 443
          }
      }

      node {
          role = "worker"
      }
  }
}