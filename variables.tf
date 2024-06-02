variable "account_key_pem" {
  type        = string
  description = "The private key used to identity the account."
}

variable "tls_private_key_algorithm" {
  type        = string
  description = "Name of the algorithm to use when generating the private key."
  default     = "RSA"
}

variable "common_name" {
  type        = string
  description = "The certificate's common name, the primary domain that the certificate will be recognized for. Required when not specifying a CSR. Forces a new resource when changed."
}

variable "san" {
  type        = list(string)
  description = "List of the certificate's subject alternative names, domains that this certificate will also be recognized for."
  default     = []
}

variable "dns_challenge_provider" {
  type        = string
  description = "Name of DNS challenge provider."
  default     = "cloudflare"
}

variable "acme_server_url" {
  type = string
  description = "The URL to the ACME endpoint's directory."
  default = "https://acme-v02.api.letsencrypt.org/directory" # prod
  # default = "https://acme-staging-v02.api.letsencrypt.org/directory" # staging
}
