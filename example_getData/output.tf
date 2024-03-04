
output "all-ns" {
  value = data.kubernetes_all_namespaces.getall-ns.namespaces
}

output "exists-ns-openshift-config" {
  value = contains(data.kubernetes_all_namespaces.getall-ns.namespaces, "openshift-config")
}

output "all-nodes" {
    value = [for node in data.kubernetes_nodes.getall-nodes.nodes : node.metadata[0].name  ]
    #value = [for node in data.kubernetes_nodes.getall-nodes.nodes : "${node.metadata[0].name}, tostring(${node.metadata[0].labels})"  ]
}