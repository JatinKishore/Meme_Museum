# main.tf

# Define IBM Cloud provider
provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region
}

# Create IBM Kubernetes Cluster
resource "ibm_container_cluster" "my_cluster" {
  name            = "my-cluster"
  location        = var.region
  resource_group  = var.resource_group
  kube_version    = "1.21.7"
  machine_type    = "b3c.8x32"
  workers         = 2
  tags            = ["memes", "jokes"]
}

# Output Kubernetes Cluster details
output "cluster_id" {
  value = ibm_container_cluster.my_cluster.id
}
