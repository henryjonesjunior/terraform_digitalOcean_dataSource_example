output "Public IP" {
  value = "${digitalocean_droplet.web-1.ipv4_address}"
}

output "Server Name" {
  value = "${digitalocean_droplet.web-1.name}"
}
