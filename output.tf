output "id" {
  value       = join("", digitalocean_domain.default[*].id)
  description = "The name of the domain"

}

output "urn" {
  value       = join("", digitalocean_domain.default[*].urn)
  description = "The uniform resource name of the domain"
}

output "ttl" {
  value       = join("", digitalocean_domain.default[*].ttl)
  description = "The TTL value of the domain"
}


