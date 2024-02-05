provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"  # Set the path to your kubeconfig file
  }
}

resource "helm_release" "my_release" {
  name       = "my-release"
  chart = "../../../helm/pghero"  # Set the path to your Helm chart directory
  version    = "2.0.1"  # Specify the version of the Helm chart

  values = [
    # Add any values you want to override in the Helm chart
    # Example: ingress controller service type
#    {
#      controller = {
#        service = {
#          type = "LoadBalancer"
#        }
#      }
#    }
  ]
}
