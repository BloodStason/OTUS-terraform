output "load_balancer_public_ip" {
  description = "Public IP address of load balancer"
#  value = yandex_lb_network_load_balancer.wp_lb.listener.*.external_address_spec[0].*.address
  value = tolist(tolist(yandex_lb_network_load_balancer.wp_lb.listener).0.external_address_spec).0.address
}

output "database_host_fqdn" {
  description = "Database hostname"
  value = local.dbhosts
}

output "vm_linux_public_ip_address" {
  description = "VM IP"
  value = yandex_compute_instance.wp-app-1.network_interface[0].nat_ip_address
}

output "vm_linux_2_public_ip_address" {
  description = "VM #2 IP"
  value = yandex_compute_instance.wp-app-2.network_interface[0].nat_ip_address
}
